package org.telegram.ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class DialogMeUrlCell extends BaseCell {
    private AvatarDrawable avatarDrawable;
    private ImageReceiver avatarImage;
    private int avatarTop;
    private int currentAccount;
    private boolean drawNameLock;
    private boolean drawVerified;
    private boolean isSelected;
    private StaticLayout messageLayout;
    private int messageLeft;
    private int messageTop;
    private StaticLayout nameLayout;
    private int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private int nameMuteLeft;
    private TLRPC.RecentMeUrl recentMeUrl;
    public boolean useSeparator;

    public DialogMeUrlCell(Context context) {
        super(context);
        this.avatarImage = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.messageTop = AndroidUtilities.dp(40.0f);
        this.avatarTop = AndroidUtilities.dp(10.0f);
        this.currentAccount = UserConfig.selectedAccount;
        Theme.createDialogsResources(context);
        this.avatarImage.setRoundRadius(AndroidUtilities.dp(26.0f));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:0|2|(4:4|(1:6)(1:8)|7|9)(2:11|(5:13|(1:15)(1:17)|16|(3:19|(3:21|(1:23)(1:25)|24)|26)|27)(23:28|(4:30|(1:32)(1:34)|33|35)(2:36|(8:38|(1:40)(1:42)|41|43|(1:45)(1:46)|47|(1:49)(1:51)|50)(2:52|(4:54|(1:56)(1:58)|57|59)(1:60)))|61|(1:63)|64|(1:66)(1:68)|67|69|(1:71)|72|(2:74|(1:76))|77|145|78|82|(3:84|(1:86)(1:87)|88)(3:89|(1:91)(1:92)|93)|94|147|95|99|(4:101|(4:105|(1:107)|108|(2:110|(1:112)))|113|(1:150)(2:119|(1:121)(1:151)))(4:123|(4:127|(2:129|(1:131))|132|(1:134))|135|(1:155)(2:141|(1:143)(1:156)))|122|152))|10|61|(0)|64|(0)(0)|67|69|(0)|72|(0)|77|145|78|82|(0)(0)|94|147|95|99|(0)(0)|122|152) */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x029b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x029c, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0322, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0323, code lost:
    
        org.telegram.messenger.FileLog.e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void buildLayout() {
        String userName;
        int iDp;
        int iDp2;
        int measuredWidth;
        int measuredWidth2;
        double d;
        TLRPC.User user;
        int iDp3;
        TextPaint textPaint = Theme.dialogs_namePaint[0];
        TextPaint textPaint2 = Theme.dialogs_messagePaint[0];
        this.drawNameLock = false;
        this.drawVerified = false;
        TLRPC.RecentMeUrl recentMeUrl = this.recentMeUrl;
        float f = 14.0f;
        if (recentMeUrl instanceof TLRPC.TL_recentMeUrlChat) {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.recentMeUrl.chat_id));
            this.drawVerified = chat.verified;
            if (LocaleController.isRTL) {
                this.nameLockLeft = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                iDp3 = AndroidUtilities.dp(14.0f);
            } else {
                this.nameLockLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                iDp3 = AndroidUtilities.dp(AndroidUtilities.leftBaseline + 4);
            }
            this.nameLeft = iDp3;
            userName = chat.title;
            this.avatarDrawable.setInfo(this.currentAccount, chat);
            user = chat;
        } else {
            if (!(recentMeUrl instanceof TLRPC.TL_recentMeUrlUser)) {
                if (recentMeUrl instanceof TLRPC.TL_recentMeUrlStickerSet) {
                    this.nameLeft = !LocaleController.isRTL ? AndroidUtilities.dp(AndroidUtilities.leftBaseline) : AndroidUtilities.dp(14.0f);
                    userName = this.recentMeUrl.set.set.title;
                    this.avatarDrawable.setInfo(5L, userName, null);
                    this.avatarImage.setImage(ImageLocation.getForDocument(this.recentMeUrl.set.cover), null, this.avatarDrawable, null, this.recentMeUrl, 0);
                } else if (recentMeUrl instanceof TLRPC.TL_recentMeUrlChatInvite) {
                    this.nameLeft = !LocaleController.isRTL ? AndroidUtilities.dp(AndroidUtilities.leftBaseline) : AndroidUtilities.dp(14.0f);
                    TLRPC.ChatInvite chatInvite = this.recentMeUrl.chat_invite;
                    TLRPC.Chat chat2 = chatInvite.chat;
                    if (chat2 != null) {
                        this.avatarDrawable.setInfo(this.currentAccount, chat2);
                        TLRPC.RecentMeUrl recentMeUrl2 = this.recentMeUrl;
                        TLRPC.Chat chat3 = recentMeUrl2.chat_invite.chat;
                        String str = chat3.title;
                        this.drawVerified = chat3.verified;
                        this.avatarImage.setForUserOrChat(chat3, this.avatarDrawable, recentMeUrl2);
                        userName = str;
                    } else {
                        String str2 = chatInvite.title;
                        this.avatarDrawable.setInfo(5L, str2, null);
                        this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(this.recentMeUrl.chat_invite.photo.sizes, 50), this.recentMeUrl.chat_invite.photo), "50_50", this.avatarDrawable, null, this.recentMeUrl, 0);
                        userName = str2;
                    }
                    if (LocaleController.isRTL) {
                        this.nameLockLeft = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                        iDp = AndroidUtilities.dp(14.0f);
                    } else {
                        this.nameLockLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                        iDp = AndroidUtilities.dp(AndroidUtilities.leftBaseline + 4);
                    }
                    this.nameLeft = iDp;
                } else if (recentMeUrl instanceof TLRPC.TL_recentMeUrlUnknown) {
                    this.nameLeft = !LocaleController.isRTL ? AndroidUtilities.dp(AndroidUtilities.leftBaseline) : AndroidUtilities.dp(14.0f);
                    this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.recentMeUrl, 0);
                    userName = "Url";
                } else {
                    this.avatarImage.setImage(null, null, this.avatarDrawable, null, recentMeUrl, 0);
                    userName = "";
                }
                String str3 = MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + this.recentMeUrl.url;
                if (TextUtils.isEmpty(userName)) {
                    userName = LocaleController.getString(R.string.HiddenName);
                }
                if (LocaleController.isRTL) {
                    measuredWidth = getMeasuredWidth() - this.nameLeft;
                } else {
                    measuredWidth = getMeasuredWidth() - this.nameLeft;
                    f = AndroidUtilities.leftBaseline;
                }
                int iDp4 = measuredWidth - AndroidUtilities.dp(f);
                if (this.drawNameLock) {
                    iDp4 -= AndroidUtilities.dp(4.0f) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                }
                if (this.drawVerified) {
                    int iDp5 = AndroidUtilities.dp(6.0f) + Theme.dialogs_verifiedDrawable.getIntrinsicWidth();
                    iDp4 -= iDp5;
                    if (LocaleController.isRTL) {
                        this.nameLeft += iDp5;
                    }
                }
                int iMax = Math.max(AndroidUtilities.dp(12.0f), iDp4);
                this.nameLayout = new StaticLayout(TextUtils.ellipsize(userName.replace('\n', ' '), textPaint, iMax - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END), textPaint, iMax, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                int measuredWidth3 = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline + 16);
                if (LocaleController.isRTL) {
                    this.messageLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                    measuredWidth2 = AndroidUtilities.dp(AndroidUtilities.isTablet() ? 13.0f : 9.0f);
                } else {
                    this.messageLeft = AndroidUtilities.dp(16.0f);
                    measuredWidth2 = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.isTablet() ? 65.0f : 61.0f);
                }
                this.avatarImage.setImageCoords(measuredWidth2, this.avatarTop, AndroidUtilities.dp(52.0f), AndroidUtilities.dp(52.0f));
                int iMax2 = Math.max(AndroidUtilities.dp(12.0f), measuredWidth3);
                this.messageLayout = new StaticLayout(TextUtils.ellipsize(str3, textPaint2, iMax2 - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END), textPaint2, iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                if (LocaleController.isRTL) {
                    StaticLayout staticLayout = this.nameLayout;
                    if (staticLayout != null && staticLayout.getLineCount() > 0) {
                        float lineRight = this.nameLayout.getLineRight(0);
                        if (lineRight == iMax) {
                            double dCeil = Math.ceil(this.nameLayout.getLineWidth(0));
                            double d2 = iMax;
                            if (dCeil < d2) {
                                double d3 = this.nameLeft;
                                Double.isNaN(d2);
                                Double.isNaN(d3);
                                this.nameLeft = (int) (d3 - (d2 - dCeil));
                            }
                        }
                        if (this.drawVerified) {
                            this.nameMuteLeft = (int) (this.nameLeft + lineRight + AndroidUtilities.dp(6.0f));
                        }
                    }
                    StaticLayout staticLayout2 = this.messageLayout;
                    if (staticLayout2 == null || staticLayout2.getLineCount() <= 0 || this.messageLayout.getLineRight(0) != iMax2) {
                        return;
                    }
                    double dCeil2 = Math.ceil(this.messageLayout.getLineWidth(0));
                    double d4 = iMax2;
                    if (dCeil2 >= d4) {
                        return;
                    }
                    double d5 = this.messageLeft;
                    Double.isNaN(d4);
                    Double.isNaN(d5);
                    d = d5 - (d4 - dCeil2);
                } else {
                    StaticLayout staticLayout3 = this.nameLayout;
                    if (staticLayout3 != null && staticLayout3.getLineCount() > 0) {
                        float lineLeft = this.nameLayout.getLineLeft(0);
                        double dCeil3 = Math.ceil(this.nameLayout.getLineWidth(0));
                        if (this.drawVerified) {
                            double d6 = this.nameLeft;
                            double d7 = iMax;
                            Double.isNaN(d7);
                            Double.isNaN(d6);
                            double d8 = d6 + (d7 - dCeil3);
                            double dDp = AndroidUtilities.dp(6.0f);
                            Double.isNaN(dDp);
                            double d9 = d8 - dDp;
                            double intrinsicWidth = Theme.dialogs_verifiedDrawable.getIntrinsicWidth();
                            Double.isNaN(intrinsicWidth);
                            this.nameMuteLeft = (int) (d9 - intrinsicWidth);
                        }
                        if (lineLeft == BitmapDescriptorFactory.HUE_RED) {
                            double d10 = iMax;
                            if (dCeil3 < d10) {
                                double d11 = this.nameLeft;
                                Double.isNaN(d10);
                                Double.isNaN(d11);
                                this.nameLeft = (int) (d11 + (d10 - dCeil3));
                            }
                        }
                    }
                    StaticLayout staticLayout4 = this.messageLayout;
                    if (staticLayout4 == null || staticLayout4.getLineCount() <= 0 || this.messageLayout.getLineLeft(0) != BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    double dCeil4 = Math.ceil(this.messageLayout.getLineWidth(0));
                    double d12 = iMax2;
                    if (dCeil4 >= d12) {
                        return;
                    }
                    double d13 = this.messageLeft;
                    Double.isNaN(d12);
                    Double.isNaN(d13);
                    d = d13 + (d12 - dCeil4);
                }
                this.messageLeft = (int) d;
            }
            TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.recentMeUrl.user_id));
            this.nameLeft = !LocaleController.isRTL ? AndroidUtilities.dp(AndroidUtilities.leftBaseline) : AndroidUtilities.dp(14.0f);
            if (user2 != null) {
                if (user2.bot) {
                    this.nameLockTop = AndroidUtilities.dp(16.5f);
                    if (LocaleController.isRTL) {
                        this.nameLockLeft = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                        iDp2 = AndroidUtilities.dp(14.0f);
                    } else {
                        this.nameLockLeft = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                        iDp2 = AndroidUtilities.dp(AndroidUtilities.leftBaseline + 4);
                    }
                    this.nameLeft = iDp2;
                }
                this.drawVerified = user2.verified;
            }
            userName = UserObject.getUserName(user2);
            this.avatarDrawable.setInfo(this.currentAccount, user2);
            user = user2;
        }
        this.avatarImage.setForUserOrChat(user, this.avatarDrawable, this.recentMeUrl);
        String str32 = MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + this.recentMeUrl.url;
        if (TextUtils.isEmpty(userName)) {
        }
        if (LocaleController.isRTL) {
        }
        int iDp42 = measuredWidth - AndroidUtilities.dp(f);
        if (this.drawNameLock) {
        }
        if (this.drawVerified) {
        }
        int iMax3 = Math.max(AndroidUtilities.dp(12.0f), iDp42);
        this.nameLayout = new StaticLayout(TextUtils.ellipsize(userName.replace('\n', ' '), textPaint, iMax3 - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END), textPaint, iMax3, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        int measuredWidth32 = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline + 16);
        if (LocaleController.isRTL) {
        }
        this.avatarImage.setImageCoords(measuredWidth2, this.avatarTop, AndroidUtilities.dp(52.0f), AndroidUtilities.dp(52.0f));
        int iMax22 = Math.max(AndroidUtilities.dp(12.0f), measuredWidth32);
        this.messageLayout = new StaticLayout(TextUtils.ellipsize(str32, textPaint2, iMax22 - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END), textPaint2, iMax22, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        if (LocaleController.isRTL) {
        }
        this.messageLeft = (int) d;
    }

    @Override // org.telegram.ui.Cells.BaseCell, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.avatarImage.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fDp;
        float measuredHeight;
        float measuredWidth;
        float measuredHeight2;
        Paint paint;
        if (this.isSelected) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), Theme.dialogs_tabletSeletedPaint);
        }
        if (this.drawNameLock) {
            BaseCell.setDrawableBounds(Theme.dialogs_lockDrawable, this.nameLockLeft, this.nameLockTop);
            Theme.dialogs_lockDrawable.draw(canvas);
        }
        if (this.nameLayout != null) {
            canvas.save();
            canvas.translate(this.nameLeft, AndroidUtilities.dp(13.0f));
            this.nameLayout.draw(canvas);
            canvas.restore();
        }
        if (this.messageLayout != null) {
            canvas.save();
            canvas.translate(this.messageLeft, this.messageTop);
            try {
                this.messageLayout.draw(canvas);
            } catch (Exception e) {
                FileLog.e(e);
            }
            canvas.restore();
        }
        if (this.drawVerified) {
            BaseCell.setDrawableBounds(Theme.dialogs_verifiedDrawable, this.nameMuteLeft, AndroidUtilities.dp(16.5f));
            BaseCell.setDrawableBounds(Theme.dialogs_verifiedCheckDrawable, this.nameMuteLeft, AndroidUtilities.dp(16.5f));
            Theme.dialogs_verifiedDrawable.draw(canvas);
            Theme.dialogs_verifiedCheckDrawable.draw(canvas);
        }
        if (this.useSeparator) {
            if (LocaleController.isRTL) {
                measuredHeight = getMeasuredHeight() - 1;
                measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                measuredHeight2 = getMeasuredHeight() - 1;
                paint = Theme.dividerPaint;
                fDp = BitmapDescriptorFactory.HUE_RED;
            } else {
                fDp = AndroidUtilities.dp(AndroidUtilities.leftBaseline);
                measuredHeight = getMeasuredHeight() - 1;
                measuredWidth = getMeasuredWidth();
                measuredHeight2 = getMeasuredHeight() - 1;
                paint = Theme.dividerPaint;
            }
            canvas.drawLine(fDp, measuredHeight, measuredWidth, measuredHeight2, paint);
        }
        this.avatarImage.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            buildLayout();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(72.0f) + (this.useSeparator ? 1 : 0));
    }

    public void setDialogSelected(boolean z) {
        if (this.isSelected != z) {
            invalidate();
        }
        this.isSelected = z;
    }

    public void setRecentMeUrl(TLRPC.RecentMeUrl recentMeUrl) {
        this.recentMeUrl = recentMeUrl;
        requestLayout();
    }
}

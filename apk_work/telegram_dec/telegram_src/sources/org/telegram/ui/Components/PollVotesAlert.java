package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimationProperties;
import org.telegram.ui.Components.PollVotesAlert;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.ProfileActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class PollVotesAlert extends BottomSheet {
    public static final Property USER_CELL_PROPERTY = new AnimationProperties.FloatProperty("placeholderAlpha") { // from class: org.telegram.ui.Components.PollVotesAlert.1
        @Override // android.util.Property
        public Float get(UserCell userCell) {
            return Float.valueOf(userCell.getPlaceholderAlpha());
        }

        @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
        public void setValue(UserCell userCell, float f) {
            userCell.setPlaceholderAlpha(f);
        }
    };
    private ActionBar actionBar;
    private AnimatorSet actionBarAnimation;
    private View actionBarShadow;
    private ChatActivity chatActivity;
    private float gradientWidth;
    private Adapter listAdapter;
    private RecyclerListView listView;
    private HashSet loadingMore;
    private boolean loadingResults;
    private MessageObject messageObject;
    private TLRPC.InputPeer peer;
    private LinearGradient placeholderGradient;
    private Matrix placeholderMatrix;
    private Paint placeholderPaint;
    private TLRPC.Poll poll;
    private ArrayList queries;
    private RectF rect;
    private int scrollOffsetY;
    private Drawable shadowDrawable;
    private AnimatedEmojiSpan.TextViewEmojis titleTextView;
    private float totalTranslation;
    private ArrayList voters;
    private HashMap votesPercents;

    public class Adapter extends RecyclerListView.SectionsAdapter {
        private int currentAccount = UserConfig.selectedAccount;
        private Context mContext;

        public Adapter(Context context) {
            this.mContext = context;
        }

        private SectionCell createSectionCell() {
            return new SectionCell(this.mContext) { // from class: org.telegram.ui.Components.PollVotesAlert.Adapter.1
                {
                    PollVotesAlert pollVotesAlert = PollVotesAlert.this;
                }

                @Override // org.telegram.ui.Components.PollVotesAlert.SectionCell
                protected void onCollapseClick() {
                    VotesList votesList = (VotesList) getTag(R.id.object_tag);
                    if (votesList.votes.size() <= 15) {
                        return;
                    }
                    boolean z = !votesList.collapsed;
                    votesList.collapsed = z;
                    if (z) {
                        votesList.collapsedCount = 10;
                    }
                    PollVotesAlert.this.animateSectionUpdates(this);
                    PollVotesAlert.this.listAdapter.update(true);
                }
            };
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getCountForSection(int i) {
            int i2 = 1;
            if (i == 0) {
                return 1;
            }
            VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(i - 1);
            int count = votesList.getCount() + 1;
            if (TextUtils.isEmpty(votesList.next_offset) && !votesList.collapsed) {
                i2 = 0;
            }
            return count + i2;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public Object getItem(int i, int i2) {
            int i3;
            int iHash;
            if (i == 0) {
                iHash = 293145;
            } else {
                int i4 = i - 1;
                iHash = i2 == 0 ? -928312 : (i4 < 0 || i4 >= PollVotesAlert.this.voters.size() || (i3 = i2 - 1) >= ((VotesList) PollVotesAlert.this.voters.get(i4)).getCount()) ? -182734 : Objects.hash(Long.valueOf(DialogObject.getPeerDialogId(((TLRPC.MessagePeerVote) ((VotesList) PollVotesAlert.this.voters.get(i4)).votes.get(i3)).peer)));
            }
            return Integer.valueOf(iHash);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getItemViewType(int i, int i2) {
            if (i == 0) {
                return 1;
            }
            if (i2 == 0) {
                return 2;
            }
            return i2 + (-1) < ((VotesList) PollVotesAlert.this.voters.get(i + (-1))).getCount() ? 0 : 3;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = 0;
            iArr[1] = 0;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getSectionCount() {
            return PollVotesAlert.this.voters.size() + 1;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public View getSectionHeaderView(int i, View view) {
            if (view == null) {
                view = createSectionCell();
            }
            SectionCell sectionCell = (SectionCell) view;
            if (i != 0) {
                view.setAlpha(1.0f);
                VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(i - 1);
                int size = PollVotesAlert.this.poll.answers.size();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    }
                    TLRPC.PollAnswer pollAnswer = (TLRPC.PollAnswer) PollVotesAlert.this.poll.answers.get(i3);
                    if (!Arrays.equals(pollAnswer.option, votesList.option) || ((Button) PollVotesAlert.this.votesPercents.get(votesList)) == null) {
                        i3++;
                    } else {
                        TLRPC.TL_textWithEntities tL_textWithEntities = pollAnswer.text;
                        if (PollVotesAlert.this.messageObject != null && PollVotesAlert.this.messageObject.translated && PollVotesAlert.this.messageObject.messageOwner != null && PollVotesAlert.this.messageObject.messageOwner.translatedPoll != null) {
                            while (true) {
                                if (i2 >= PollVotesAlert.this.messageObject.messageOwner.translatedPoll.answers.size()) {
                                    break;
                                }
                                TLRPC.PollAnswer pollAnswer2 = PollVotesAlert.this.messageObject.messageOwner.translatedPoll.answers.get(i2);
                                if (Arrays.equals(pollAnswer2.option, pollAnswer.option)) {
                                    tL_textWithEntities = pollAnswer2.text;
                                    break;
                                }
                                i2++;
                            }
                        }
                        sectionCell.setText(tL_textWithEntities == null ? "" : tL_textWithEntities.text, tL_textWithEntities == null ? null : tL_textWithEntities.entities, PollVotesAlert.this.calcPercent(votesList.option), votesList.count, votesList.getCollapsed(), false);
                        sectionCell.setTag(R.id.object_tag, votesList);
                    }
                }
            } else {
                sectionCell.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            return view;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            if (i == 0 || i2 == 0) {
                return false;
            }
            return PollVotesAlert.this.queries == null || PollVotesAlert.this.queries.isEmpty();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            int i3 = 0;
            if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return;
                }
                TextCell textCell = (TextCell) viewHolder.itemView;
                VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(i - 1);
                textCell.setTextAndIcon((CharSequence) LocaleController.formatPluralString("ShowVotes", votesList.count - votesList.getCount(), new Object[0]), R.drawable.arrow_more, false);
                return;
            }
            SectionCell sectionCell = (SectionCell) viewHolder.itemView;
            VotesList votesList2 = (VotesList) PollVotesAlert.this.voters.get(i - 1);
            int size = PollVotesAlert.this.poll.answers.size();
            for (int i4 = 0; i4 < size; i4++) {
                TLRPC.PollAnswer pollAnswer = (TLRPC.PollAnswer) PollVotesAlert.this.poll.answers.get(i4);
                if (Arrays.equals(pollAnswer.option, votesList2.option) && ((Button) PollVotesAlert.this.votesPercents.get(votesList2)) != null) {
                    TLRPC.TL_textWithEntities tL_textWithEntities = pollAnswer.text;
                    if (PollVotesAlert.this.messageObject != null && PollVotesAlert.this.messageObject.translated && PollVotesAlert.this.messageObject.messageOwner != null && PollVotesAlert.this.messageObject.messageOwner.translatedPoll != null) {
                        while (true) {
                            if (i3 >= PollVotesAlert.this.messageObject.messageOwner.translatedPoll.answers.size()) {
                                break;
                            }
                            TLRPC.PollAnswer pollAnswer2 = PollVotesAlert.this.messageObject.messageOwner.translatedPoll.answers.get(i3);
                            if (Arrays.equals(pollAnswer2.option, pollAnswer.option)) {
                                tL_textWithEntities = pollAnswer2.text;
                                break;
                            }
                            i3++;
                        }
                    }
                    sectionCell.setText(tL_textWithEntities == null ? "" : tL_textWithEntities.text, tL_textWithEntities == null ? null : tL_textWithEntities.entities, PollVotesAlert.this.calcPercent(votesList2.option), votesList2.count, votesList2.getCollapsed(), false);
                    sectionCell.setTag(R.id.object_tag, votesList2);
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View userCell;
            if (i == 0) {
                userCell = PollVotesAlert.this.new UserCell(this.mContext);
            } else if (i == 1) {
                if (PollVotesAlert.this.titleTextView.getParent() != null) {
                    ((ViewGroup) PollVotesAlert.this.titleTextView.getParent()).removeView(PollVotesAlert.this.titleTextView);
                }
                userCell = PollVotesAlert.this.titleTextView;
            } else if (i != 2) {
                TextCell textCell = new TextCell(this.mContext, 23, true);
                textCell.setOffsetFromImage(65);
                textCell.setBackgroundColor(PollVotesAlert.this.getThemedColor(Theme.key_dialogBackground));
                textCell.setColors(Theme.key_switchTrackChecked, Theme.key_windowBackgroundWhiteBlueText4);
                userCell = textCell;
            } else {
                userCell = createSectionCell();
            }
            return new RecyclerListView.Holder(userCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 0) {
                int adapterPosition = viewHolder.getAdapterPosition();
                int sectionForPosition = getSectionForPosition(adapterPosition);
                int positionInSectionForPosition = getPositionInSectionForPosition(adapterPosition) - 1;
                UserCell userCell = (UserCell) viewHolder.itemView;
                VotesList votesList = (VotesList) PollVotesAlert.this.voters.get(sectionForPosition - 1);
                TLObject userOrChat = PollVotesAlert.this.chatActivity.getMessagesController().getUserOrChat(DialogObject.getPeerDialogId(((TLRPC.MessagePeerVote) votesList.votes.get(positionInSectionForPosition)).peer));
                boolean z = true;
                if (positionInSectionForPosition == votesList.getCount() - 1 && TextUtils.isEmpty(votesList.next_offset) && !votesList.collapsed) {
                    z = false;
                }
                userCell.setData(userOrChat, positionInSectionForPosition, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Button {
        private float decimal;
        private int percent;
        private int votesCount;

        private Button() {
        }

        static /* synthetic */ float access$4024(Button button, float f) {
            float f2 = button.decimal - f;
            button.decimal = f2;
            return f2;
        }

        static /* synthetic */ int access$4112(Button button, int i) {
            int i2 = button.percent + i;
            button.percent = i2;
            return i2;
        }
    }

    public class SectionCell extends FrameLayout {
        private TextView middleTextView;
        private AnimatedTextView righTextView;
        private AnimatedEmojiSpan.TextViewEmojis textView;

        public SectionCell(Context context) {
            super(context);
            setBackgroundColor(Theme.getColor(Theme.key_graySection));
            AnimatedEmojiSpan.TextViewEmojis textViewEmojis = new AnimatedEmojiSpan.TextViewEmojis(getContext());
            this.textView = textViewEmojis;
            textViewEmojis.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.bold());
            AnimatedEmojiSpan.TextViewEmojis textViewEmojis2 = this.textView;
            int i = Theme.key_graySectionText;
            textViewEmojis2.setTextColor(Theme.getColor(i));
            this.textView.setSingleLine(true);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            TextView textView = new TextView(getContext());
            this.middleTextView = textView;
            textView.setTextSize(1, 14.0f);
            this.middleTextView.setTextColor(Theme.getColor(i));
            this.middleTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            AnimatedTextView animatedTextView = new AnimatedTextView(getContext()) { // from class: org.telegram.ui.Components.PollVotesAlert.SectionCell.1
                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    SectionCell sectionCell = SectionCell.this;
                    if (sectionCell == PollVotesAlert.this.listView.getPinnedHeader()) {
                        PollVotesAlert.this.listView.invalidate();
                    }
                }

                @Override // android.view.View
                public boolean post(Runnable runnable) {
                    return ((BottomSheet) PollVotesAlert.this).containerView.post(runnable);
                }

                @Override // android.view.View
                public boolean postDelayed(Runnable runnable, long j) {
                    return ((BottomSheet) PollVotesAlert.this).containerView.postDelayed(runnable, j);
                }
            };
            this.righTextView = animatedTextView;
            animatedTextView.setTextSize(AndroidUtilities.dp(14.0f));
            this.righTextView.setTextColor(Theme.getColor(i));
            this.righTextView.setGravity(LocaleController.isRTL ? 3 : 5);
            this.righTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PollVotesAlert$SectionCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            AnimatedEmojiSpan.TextViewEmojis textViewEmojis3 = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textViewEmojis3, LayoutHelper.createFrame(-2, -1.0f, (z ? 5 : 3) | 48, z ? 0 : 16, BitmapDescriptorFactory.HUE_RED, z ? 16 : 0, BitmapDescriptorFactory.HUE_RED));
            addView(this.middleTextView, LayoutHelper.createFrame(-2, -1.0f, (LocaleController.isRTL ? 5 : 3) | 48, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            addView(this.righTextView, LayoutHelper.createFrame(-2, -1.0f, (LocaleController.isRTL ? 3 : 5) | 48, 16.0f, BitmapDescriptorFactory.HUE_RED, 16.0f, BitmapDescriptorFactory.HUE_RED));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            onCollapseClick();
        }

        protected abstract void onCollapseClick();

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int left = LocaleController.isRTL ? this.textView.getLeft() - this.middleTextView.getMeasuredWidth() : this.textView.getRight();
            TextView textView = this.middleTextView;
            textView.layout(left, textView.getTop(), this.middleTextView.getMeasuredWidth() + left, this.middleTextView.getBottom());
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), 1073741824);
            measureChildWithMargins(this.middleTextView, i, 0, iMakeMeasureSpec, 0);
            measureChildWithMargins(this.righTextView, i, 0, iMakeMeasureSpec, 0);
            measureChildWithMargins(this.textView, i, this.middleTextView.getMeasuredWidth() + this.righTextView.getMeasuredWidth() + AndroidUtilities.dp(32.0f), iMakeMeasureSpec, 0);
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(32.0f));
        }

        public void setText(CharSequence charSequence, ArrayList arrayList, int i, int i2, int i3, boolean z) {
            AnimatedEmojiSpan.TextViewEmojis textViewEmojis;
            CharSequence charSequenceReplaceEmoji;
            AnimatedTextView animatedTextView;
            String string;
            if (arrayList != null) {
                NotificationCenter.listenEmojiLoading(this.textView);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
                MediaDataController.addTextStyleRuns((ArrayList<TLRPC.MessageEntity>) arrayList, charSequence, spannableStringBuilder);
                charSequenceReplaceEmoji = Emoji.replaceEmoji(spannableStringBuilder, this.textView.getPaint().getFontMetricsInt(), false);
                MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, arrayList, this.textView.getPaint().getFontMetricsInt());
                textViewEmojis = this.textView;
            } else {
                textViewEmojis = this.textView;
                charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequence, textViewEmojis.getPaint().getFontMetricsInt(), false);
            }
            textViewEmojis.setText(charSequenceReplaceEmoji);
            String str = String.format("%d", Integer.valueOf(i));
            SpannableStringBuilder spannableStringBuilder2 = LocaleController.isRTL ? new SpannableStringBuilder(String.format("%s%% – ", Integer.valueOf(i))) : new SpannableStringBuilder(String.format(" – %s%%", Integer.valueOf(i)));
            spannableStringBuilder2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 3, str.length() + 3, 33);
            this.middleTextView.setText(spannableStringBuilder2);
            if (i3 != 0) {
                animatedTextView = this.righTextView;
                string = LocaleController.getString(i3 == 1 ? R.string.PollExpand : R.string.PollCollapse);
            } else if (PollVotesAlert.this.poll.quiz) {
                animatedTextView = this.righTextView;
                string = LocaleController.formatPluralString("Answer", i2, new Object[0]);
            } else {
                animatedTextView = this.righTextView;
                string = LocaleController.formatPluralString("Vote", i2, new Object[0]);
            }
            animatedTextView.setText(string, z);
        }
    }

    public class UserCell extends FrameLayout {
        private ArrayList animators;
        private AvatarDrawable avatarDrawable;
        private BackupImageView avatarImageView;
        private int currentAccount;
        private TLRPC.Chat currentChat;
        private TLRPC.User currentUser;
        private boolean drawPlaceholder;
        private TLRPC.FileLocation lastAvatar;
        private CharSequence lastName;
        private int lastStatus;
        private SimpleTextView nameTextView;
        private boolean needDivider;
        private float placeholderAlpha;
        private int placeholderNum;
        private StatusBadgeComponent statusBadgeComponent;

        public UserCell(Context context) {
            super(context);
            this.currentAccount = UserConfig.selectedAccount;
            this.placeholderAlpha = 1.0f;
            setWillNotDraw(false);
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarImageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.dp(18.0f));
            BackupImageView backupImageView2 = this.avatarImageView;
            boolean z = LocaleController.isRTL;
            addView(backupImageView2, LayoutHelper.createFrame(36, 36.0f, (z ? 5 : 3) | 48, z ? BitmapDescriptorFactory.HUE_RED : 14.0f, 6.0f, z ? 14.0f : BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.nameTextView = simpleTextView;
            simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            this.nameTextView.setTypeface(AndroidUtilities.bold());
            this.nameTextView.setTextSize(16);
            this.nameTextView.setGravity(16 | (LocaleController.isRTL ? 5 : 3));
            SimpleTextView simpleTextView2 = this.nameTextView;
            boolean z2 = LocaleController.isRTL;
            addView(simpleTextView2, LayoutHelper.createFrame(-1, 24.0f, (z2 ? 5 : 3) | 48, z2 ? 28.0f : 65.0f, 12.0f, z2 ? 65.0f : 28.0f, BitmapDescriptorFactory.HUE_RED));
            this.statusBadgeComponent = new StatusBadgeComponent(this.nameTextView, 20);
        }

        public float getPlaceholderAlpha() {
            return this.placeholderAlpha;
        }

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.statusBadgeComponent.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            this.statusBadgeComponent.onDetachedFromWindow();
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int iDp;
            int iDp2;
            int iDp3;
            if (this.drawPlaceholder || this.placeholderAlpha != BitmapDescriptorFactory.HUE_RED) {
                PollVotesAlert.this.placeholderPaint.setAlpha((int) (this.placeholderAlpha * 255.0f));
                canvas.drawCircle(this.avatarImageView.getLeft() + (this.avatarImageView.getMeasuredWidth() / 2), this.avatarImageView.getTop() + (this.avatarImageView.getMeasuredHeight() / 2), this.avatarImageView.getMeasuredWidth() / 2, PollVotesAlert.this.placeholderPaint);
                float f = 60.0f;
                if (this.placeholderNum % 2 == 0) {
                    iDp = AndroidUtilities.dp(65.0f);
                    iDp2 = AndroidUtilities.dp(48.0f);
                } else {
                    iDp = AndroidUtilities.dp(65.0f);
                    iDp2 = AndroidUtilities.dp(60.0f);
                }
                if (LocaleController.isRTL) {
                    iDp = (getMeasuredWidth() - iDp) - iDp2;
                }
                PollVotesAlert.this.rect.set(iDp, r2 - AndroidUtilities.dp(4.0f), iDp + iDp2, AndroidUtilities.dp(4.0f) + r2);
                canvas.drawRoundRect(PollVotesAlert.this.rect, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), PollVotesAlert.this.placeholderPaint);
                if (this.placeholderNum % 2 == 0) {
                    iDp3 = AndroidUtilities.dp(119.0f);
                } else {
                    iDp3 = AndroidUtilities.dp(131.0f);
                    f = 80.0f;
                }
                int iDp4 = AndroidUtilities.dp(f);
                if (LocaleController.isRTL) {
                    iDp3 = (getMeasuredWidth() - iDp3) - iDp4;
                }
                PollVotesAlert.this.rect.set(iDp3, r2 - AndroidUtilities.dp(4.0f), iDp3 + iDp4, r2 + AndroidUtilities.dp(4.0f));
                canvas.drawRoundRect(PollVotesAlert.this.rect, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), PollVotesAlert.this.placeholderPaint);
            }
            if (this.needDivider) {
                canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dp(64.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(64.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f) + (this.needDivider ? 1 : 0), 1073741824));
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0071  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void setData(TLObject tLObject, int i, boolean z) {
            ArrayList arrayList;
            if (tLObject instanceof TLRPC.User) {
                this.currentUser = (TLRPC.User) tLObject;
            } else {
                if (tLObject instanceof TLRPC.Chat) {
                    this.currentChat = (TLRPC.Chat) tLObject;
                    this.currentUser = null;
                    this.needDivider = z;
                    this.drawPlaceholder = tLObject != null;
                    this.placeholderNum = i;
                    if (tLObject != null) {
                        this.nameTextView.setText("");
                        this.avatarImageView.setImageDrawable(null);
                    } else {
                        update(0);
                    }
                    arrayList = this.animators;
                    if (arrayList != null) {
                        if (this.drawPlaceholder) {
                            return;
                        }
                        this.placeholderAlpha = BitmapDescriptorFactory.HUE_RED;
                        return;
                    } else {
                        BackupImageView backupImageView = this.avatarImageView;
                        Property property = View.ALPHA;
                        arrayList.add(ObjectAnimator.ofFloat(backupImageView, (Property<BackupImageView, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f));
                        this.animators.add(ObjectAnimator.ofFloat(this.nameTextView, (Property<SimpleTextView, Float>) property, BitmapDescriptorFactory.HUE_RED, 1.0f));
                        this.animators.add(ObjectAnimator.ofFloat(this, (Property<UserCell, Float>) PollVotesAlert.USER_CELL_PROPERTY, 1.0f, BitmapDescriptorFactory.HUE_RED));
                        return;
                    }
                }
                this.currentUser = null;
            }
            this.currentChat = null;
            this.needDivider = z;
            this.drawPlaceholder = tLObject != null;
            this.placeholderNum = i;
            if (tLObject != null) {
            }
            arrayList = this.animators;
            if (arrayList != null) {
            }
        }

        public void setPlaceholderAlpha(float f) {
            this.placeholderAlpha = f;
            invalidate();
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x0077 A[PHI: r1
          0x0077: PHI (r1v6 java.lang.String) = (r1v0 java.lang.String), (r1v0 java.lang.String), (r1v0 java.lang.String), (r1v9 java.lang.String) binds: [B:41:0x0056, B:43:0x005a, B:45:0x005f, B:52:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x007a A[RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void update(int i) {
            TLRPC.FileLocation fileLocation;
            TLRPC.ChatPhoto chatPhoto;
            CharSequence charSequenceReplaceEmoji;
            TLRPC.FileLocation fileLocation2;
            TLRPC.UserProfilePhoto userProfilePhoto;
            TLRPC.User user = this.currentUser;
            String userName = null;
            if (user == null || (userProfilePhoto = user.photo) == null) {
                TLRPC.Chat chat = this.currentChat;
                fileLocation = (chat == null || (chatPhoto = chat.photo) == null) ? null : chatPhoto.photo_small;
            } else {
                fileLocation = userProfilePhoto.photo_small;
            }
            if (i != 0) {
                boolean z = true;
                boolean z2 = (MessagesController.UPDATE_MASK_AVATAR & i) != 0 && (((fileLocation2 = this.lastAvatar) != null && fileLocation == null) || ((fileLocation2 == null && fileLocation != null) || !(fileLocation2 == null || fileLocation == null || (fileLocation2.volume_id == fileLocation.volume_id && fileLocation2.local_id == fileLocation.local_id))));
                if (user != null && !z2 && (MessagesController.UPDATE_MASK_STATUS & i) != 0) {
                    TLRPC.UserStatus userStatus = user.status;
                    if ((userStatus != null ? userStatus.expires : 0) != this.lastStatus) {
                        z2 = true;
                    }
                }
                if (z2 || this.lastName == null || (i & MessagesController.UPDATE_MASK_NAME) == 0) {
                    z = z2;
                    if (!z) {
                        return;
                    }
                } else {
                    if (user != null) {
                        userName = UserObject.getUserName(user);
                    } else {
                        TLRPC.Chat chat2 = this.currentChat;
                        if (chat2 != null) {
                            userName = chat2.title;
                        }
                    }
                    if (TextUtils.equals(userName, this.lastName)) {
                    }
                    if (!z) {
                    }
                }
            }
            TLRPC.User user2 = this.currentUser;
            if (user2 != null) {
                this.avatarDrawable.setInfo(this.currentAccount, user2);
                TLRPC.UserStatus userStatus2 = this.currentUser.status;
                if (userStatus2 != null) {
                    this.lastStatus = userStatus2.expires;
                } else {
                    this.lastStatus = 0;
                }
            } else {
                TLRPC.Chat chat3 = this.currentChat;
                if (chat3 != null) {
                    this.avatarDrawable.setInfo(this.currentAccount, chat3);
                }
            }
            TLRPC.User user3 = this.currentUser;
            if (user3 != null) {
                if (userName == null) {
                    userName = UserObject.getUserName(user3);
                }
                this.lastName = userName;
                charSequenceReplaceEmoji = Emoji.replaceEmoji(userName, this.nameTextView.getPaint().getFontMetricsInt(), false);
            } else {
                TLRPC.Chat chat4 = this.currentChat;
                if (chat4 != null) {
                    String str = chat4.title;
                    this.lastName = str;
                    charSequenceReplaceEmoji = Emoji.replaceEmoji(str, this.nameTextView.getPaint().getFontMetricsInt(), false);
                } else {
                    charSequenceReplaceEmoji = "";
                }
            }
            this.lastName = charSequenceReplaceEmoji;
            this.nameTextView.setText(this.lastName);
            this.nameTextView.setRightDrawable(this.statusBadgeComponent.updateDrawable(this.currentUser, this.currentChat, Theme.getColor(Theme.key_chats_verifiedBackground, ((BottomSheet) PollVotesAlert.this).resourcesProvider), false));
            this.lastAvatar = fileLocation;
            TLObject tLObject = this.currentChat;
            if (tLObject == null && (tLObject = this.currentUser) == null) {
                this.avatarImageView.setImageDrawable(this.avatarDrawable);
            } else {
                this.avatarImageView.setForUserOrChat(tLObject, this.avatarDrawable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class VotesList {
        public boolean collapsed;
        public int collapsedCount = 10;
        public int count;
        public String next_offset;
        public byte[] option;
        public ArrayList users;
        public ArrayList votes;

        public VotesList(TLRPC.TL_messages_votesList tL_messages_votesList, byte[] bArr) {
            this.count = tL_messages_votesList.count;
            this.votes = tL_messages_votesList.votes;
            this.users = tL_messages_votesList.users;
            this.next_offset = tL_messages_votesList.next_offset;
            this.option = bArr;
        }

        public int getCollapsed() {
            if (this.votes.size() <= 15) {
                return 0;
            }
            return this.collapsed ? 1 : 2;
        }

        public int getCount() {
            return this.collapsed ? Math.min(this.collapsedCount, this.votes.size()) : this.votes.size();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PollVotesAlert(final ChatActivity chatActivity, MessageObject messageObject) {
        ActionBar actionBar;
        String pluralString;
        TLRPC.Message message;
        TranslateController.PollText pollText;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        int i;
        int i2;
        super(chatActivity.getParentActivity(), true);
        int i3 = 1;
        this.loadingMore = new HashSet();
        this.votesPercents = new HashMap();
        this.voters = new ArrayList();
        this.queries = new ArrayList();
        this.placeholderPaint = new Paint(1);
        this.loadingResults = true;
        this.rect = new RectF();
        fixNavigationBar();
        this.messageObject = messageObject;
        this.chatActivity = chatActivity;
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageObject.messageOwner.media;
        this.poll = tL_messageMediaPoll.poll;
        Activity parentActivity = chatActivity.getParentActivity();
        this.peer = chatActivity.getMessagesController().getInputPeer(messageObject.getDialogId());
        final ArrayList arrayList = new ArrayList();
        int size = tL_messageMediaPoll.results.results.size();
        final Integer[] numArr = new Integer[size];
        int i4 = 0;
        while (i4 < size) {
            final TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters = (TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i4);
            if (tL_pollAnswerVoters.voters == 0) {
                i2 = i4;
                i = size;
            } else {
                TLRPC.TL_messages_votesList tL_messages_votesList = new TLRPC.TL_messages_votesList();
                int i5 = tL_pollAnswerVoters.voters;
                i5 = i5 > 15 ? 10 : i5;
                for (int i6 = 0; i6 < i5; i6++) {
                    tL_messages_votesList.votes.add(new TLRPC.TL_messagePeerVoteInputOption());
                }
                int i7 = tL_pollAnswerVoters.voters;
                tL_messages_votesList.next_offset = i5 < i7 ? "empty" : null;
                tL_messages_votesList.count = i7;
                this.voters.add(new VotesList(tL_messages_votesList, tL_pollAnswerVoters.option));
                TLRPC.TL_messages_getPollVotes tL_messages_getPollVotes = new TLRPC.TL_messages_getPollVotes();
                tL_messages_getPollVotes.peer = this.peer;
                tL_messages_getPollVotes.id = this.messageObject.getId();
                tL_messages_getPollVotes.limit = tL_pollAnswerVoters.voters <= 15 ? 15 : 10;
                tL_messages_getPollVotes.flags |= i3;
                tL_messages_getPollVotes.option = tL_pollAnswerVoters.option;
                final int i8 = i4;
                i = size;
                i2 = i4;
                Integer numValueOf = Integer.valueOf(chatActivity.getConnectionsManager().sendRequest(tL_messages_getPollVotes, new RequestDelegate() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$new$1(numArr, i8, chatActivity, arrayList, tL_pollAnswerVoters, tLObject, tL_error);
                    }
                }));
                numArr[i2] = numValueOf;
                this.queries.add(numValueOf);
            }
            i4 = i2 + 1;
            size = i;
            i3 = 1;
        }
        updateButtons();
        Collections.sort(this.voters, new Comparator() { // from class: org.telegram.ui.Components.PollVotesAlert.2
            private int getIndex(VotesList votesList) {
                int size2 = PollVotesAlert.this.poll.answers.size();
                for (int i9 = 0; i9 < size2; i9++) {
                    if (Arrays.equals(((TLRPC.PollAnswer) PollVotesAlert.this.poll.answers.get(i9)).option, votesList.option)) {
                        return i9;
                    }
                }
                return 0;
            }

            @Override // java.util.Comparator
            public int compare(VotesList votesList, VotesList votesList2) {
                int index = getIndex(votesList);
                int index2 = getIndex(votesList2);
                if (index > index2) {
                    return 1;
                }
                return index < index2 ? -1 : 0;
            }
        });
        updatePlaceholder();
        Drawable drawableMutate = parentActivity.getResources().getDrawable(R.drawable.sheet_shadow_round).mutate();
        this.shadowDrawable = drawableMutate;
        int i9 = Theme.key_dialogBackground;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i9), PorterDuff.Mode.MULTIPLY));
        FrameLayout frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.PollVotesAlert.3
            private boolean ignoreLayout = false;
            private RectF rect = new RectF();

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                float f;
                int iDp = AndroidUtilities.dp(13.0f);
                int translationY = (PollVotesAlert.this.scrollOffsetY - ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop) - iDp;
                if (((BottomSheet) PollVotesAlert.this).currentSheetAnimationType == 1) {
                    translationY = (int) (translationY + PollVotesAlert.this.listView.getTranslationY());
                }
                int iDp2 = AndroidUtilities.dp(20.0f) + translationY;
                int measuredHeight = getMeasuredHeight() + AndroidUtilities.dp(15.0f) + ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop;
                if (((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + translationY < ActionBar.getCurrentActionBarHeight()) {
                    float fDp = iDp + AndroidUtilities.dp(4.0f);
                    float fMin = Math.min(1.0f, ((ActionBar.getCurrentActionBarHeight() - translationY) - ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop) / fDp);
                    int currentActionBarHeight = (int) ((ActionBar.getCurrentActionBarHeight() - fDp) * fMin);
                    translationY -= currentActionBarHeight;
                    iDp2 -= currentActionBarHeight;
                    measuredHeight += currentActionBarHeight;
                    f = 1.0f - fMin;
                } else {
                    f = 1.0f;
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    int i10 = AndroidUtilities.statusBarHeight;
                    translationY += i10;
                    iDp2 += i10;
                }
                PollVotesAlert.this.shadowDrawable.setBounds(0, translationY, getMeasuredWidth(), measuredHeight);
                PollVotesAlert.this.shadowDrawable.draw(canvas);
                if (f != 1.0f) {
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_dialogBackground));
                    this.rect.set(((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + translationY, getMeasuredWidth() - ((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + translationY + AndroidUtilities.dp(24.0f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(12.0f) * f, AndroidUtilities.dp(12.0f) * f, Theme.dialogs_onlineCirclePaint);
                }
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    int iDp3 = AndroidUtilities.dp(36.0f);
                    this.rect.set((getMeasuredWidth() - iDp3) / 2, iDp2, (getMeasuredWidth() + iDp3) / 2, iDp2 + AndroidUtilities.dp(4.0f));
                    int color = Theme.getColor(Theme.key_sheet_scrollUp);
                    int iAlpha = Color.alpha(color);
                    Theme.dialogs_onlineCirclePaint.setColor(color);
                    Theme.dialogs_onlineCirclePaint.setAlpha((int) (iAlpha * 1.0f * f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), Theme.dialogs_onlineCirclePaint);
                }
                int color2 = Theme.getColor(Theme.key_dialogBackground);
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb((int) (PollVotesAlert.this.actionBar.getAlpha() * 255.0f), (int) (Color.red(color2) * 0.8f), (int) (Color.green(color2) * 0.8f), (int) (Color.blue(color2) * 0.8f)));
                canvas.drawRect(((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth() - ((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || PollVotesAlert.this.scrollOffsetY == 0 || motionEvent.getY() >= PollVotesAlert.this.scrollOffsetY + AndroidUtilities.dp(12.0f) || PollVotesAlert.this.actionBar.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                PollVotesAlert.this.lambda$new$0();
                return true;
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i10, int i11, int i12, int i13) {
                super.onLayout(z, i10, i11, i12, i13);
                PollVotesAlert.this.updateLayout(false);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i10, int i11) {
                int size2 = View.MeasureSpec.getSize(i11);
                if (Build.VERSION.SDK_INT >= 21 && !((BottomSheet) PollVotesAlert.this).isFullscreen) {
                    this.ignoreLayout = true;
                    setPadding(((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft, 0);
                    this.ignoreLayout = false;
                }
                int paddingTop = size2 - getPaddingTop();
                ((FrameLayout.LayoutParams) PollVotesAlert.this.listView.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight();
                ((FrameLayout.LayoutParams) PollVotesAlert.this.actionBarShadow.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight();
                int iDp = ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop + AndroidUtilities.dp(15.0f) + AndroidUtilities.statusBarHeight;
                int sectionCount = PollVotesAlert.this.listAdapter.getSectionCount();
                for (int i12 = 0; i12 < sectionCount; i12++) {
                    if (i12 == 0) {
                        PollVotesAlert.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i10 - (((BottomSheet) PollVotesAlert.this).backgroundPaddingLeft * 2)), 1073741824), i11);
                        iDp += PollVotesAlert.this.titleTextView.getMeasuredHeight();
                    } else {
                        iDp += AndroidUtilities.dp(32.0f) + (AndroidUtilities.dp(50.0f) * (PollVotesAlert.this.listAdapter.getCountForSection(i12) - 1));
                    }
                }
                int iDp2 = (iDp < paddingTop ? paddingTop - iDp : paddingTop - ((paddingTop / 5) * 3)) + AndroidUtilities.dp(8.0f);
                if (PollVotesAlert.this.listView.getPaddingTop() != iDp2) {
                    this.ignoreLayout = true;
                    PollVotesAlert.this.listView.setPinnedSectionOffsetY(-iDp2);
                    PollVotesAlert.this.listView.setPadding(0, iDp2, 0, 0);
                    this.ignoreLayout = false;
                }
                super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !PollVotesAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.containerView = frameLayout;
        frameLayout.setWillNotDraw(false);
        ViewGroup viewGroup = this.containerView;
        int i10 = this.backgroundPaddingLeft;
        viewGroup.setPadding(i10, 0, i10, 0);
        this.listView = new RecyclerListView(parentActivity) { // from class: org.telegram.ui.Components.PollVotesAlert.4
            long lastUpdateTime;

            @Override // org.telegram.ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) (PollVotesAlert.this.scrollOffsetY + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)));
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (PollVotesAlert.this.loadingResults) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long jAbs = Math.abs(this.lastUpdateTime - jElapsedRealtime);
                    if (jAbs > 17) {
                        jAbs = 16;
                    }
                    this.lastUpdateTime = jElapsedRealtime;
                    PollVotesAlert pollVotesAlert = PollVotesAlert.this;
                    PollVotesAlert.access$3116(pollVotesAlert, (jAbs * pollVotesAlert.gradientWidth) / 1800.0f);
                    while (PollVotesAlert.this.totalTranslation >= PollVotesAlert.this.gradientWidth * 2.0f) {
                        PollVotesAlert pollVotesAlert2 = PollVotesAlert.this;
                        PollVotesAlert.access$3124(pollVotesAlert2, pollVotesAlert2.gradientWidth * 2.0f);
                    }
                    PollVotesAlert.this.placeholderMatrix.setTranslate(PollVotesAlert.this.totalTranslation, BitmapDescriptorFactory.HUE_RED);
                    PollVotesAlert.this.placeholderGradient.setLocalMatrix(PollVotesAlert.this.placeholderMatrix);
                    invalidateViews();
                    invalidate();
                }
                super.dispatchDraw(canvas);
            }
        };
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setAddDuration(150L);
        defaultItemAnimator.setMoveDuration(350L);
        defaultItemAnimator.setChangeDuration(0L);
        defaultItemAnimator.setRemoveDuration(0L);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setMoveInterpolator(new OvershootInterpolator(1.1f));
        defaultItemAnimator.setTranslationInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setClipToPadding(false);
        this.listView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false) { // from class: org.telegram.ui.Components.PollVotesAlert.5
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            protected int getExtraLayoutSpace(RecyclerView.State state) {
                return AndroidUtilities.dp(4000.0f);
            }
        });
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setSectionsType(2);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        RecyclerListView recyclerListView = this.listView;
        Adapter adapter = new Adapter(parentActivity);
        this.listAdapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.listView.setGlowColor(Theme.getColor(Theme.key_dialogScrollGlow));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i11) {
                this.f$0.lambda$new$4(chatActivity, view, i11);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.PollVotesAlert.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
                if (i11 == 0) {
                    if (((PollVotesAlert.this.scrollOffsetY - ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop) - AndroidUtilities.dp(13.0f)) + ((BottomSheet) PollVotesAlert.this).backgroundPaddingTop >= ActionBar.getCurrentActionBarHeight() || !PollVotesAlert.this.listView.canScrollVertically(1)) {
                        return;
                    }
                    PollVotesAlert.this.listView.getChildAt(0);
                    RecyclerListView.Holder holder = (RecyclerListView.Holder) PollVotesAlert.this.listView.findViewHolderForAdapterPosition(0);
                    if (holder == null || holder.itemView.getTop() <= AndroidUtilities.dp(7.0f)) {
                        return;
                    }
                    PollVotesAlert.this.listView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.dp(7.0f));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
                if (PollVotesAlert.this.listView.getChildCount() <= 0) {
                    return;
                }
                PollVotesAlert.this.updateLayout(true);
            }
        });
        AnimatedEmojiSpan.TextViewEmojis textViewEmojis = new AnimatedEmojiSpan.TextViewEmojis(parentActivity);
        this.titleTextView = textViewEmojis;
        textViewEmojis.setTextSize(1, 18.0f);
        this.titleTextView.setTypeface(AndroidUtilities.bold());
        this.titleTextView.setPadding(AndroidUtilities.dp(21.0f), AndroidUtilities.dp(5.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(21.0f));
        AnimatedEmojiSpan.TextViewEmojis textViewEmojis2 = this.titleTextView;
        int i11 = Theme.key_dialogTextBlack;
        textViewEmojis2.setTextColor(Theme.getColor(i11));
        this.titleTextView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        TLRPC.TL_textWithEntities tL_textWithEntities2 = this.poll.question;
        if (tL_textWithEntities2 != null) {
            MessageObject messageObject2 = this.messageObject;
            if (messageObject2 != null && messageObject2.translated && (message = messageObject2.messageOwner) != null && (pollText = message.translatedPoll) != null && (tL_textWithEntities = pollText.question) != null) {
                tL_textWithEntities2 = tL_textWithEntities;
            }
            NotificationCenter.listenEmojiLoading(this.titleTextView);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_textWithEntities2.text);
            MediaDataController.addTextStyleRuns((ArrayList<TLRPC.MessageEntity>) tL_textWithEntities2.entities, tL_textWithEntities2.text, spannableStringBuilder);
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(spannableStringBuilder, this.titleTextView.getPaint().getFontMetricsInt(), false);
            MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, tL_textWithEntities2.entities, this.titleTextView.getPaint().getFontMetricsInt());
            this.titleTextView.setText(charSequenceReplaceEmoji);
        }
        ActionBar actionBar2 = new ActionBar(parentActivity) { // from class: org.telegram.ui.Components.PollVotesAlert.7
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ((BottomSheet) PollVotesAlert.this).containerView.invalidate();
            }
        };
        this.actionBar = actionBar2;
        actionBar2.setBackgroundColor(Theme.getColor(i9));
        this.actionBar.setBackButtonImage(R.drawable.ic_ab_back);
        this.actionBar.setItemsColor(Theme.getColor(i11), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_dialogButtonSelector), false);
        this.actionBar.setTitleColor(Theme.getColor(i11));
        this.actionBar.setSubtitleColor(Theme.getColor(Theme.key_player_actionBarSubtitle));
        this.actionBar.setOccupyStatusBar(false);
        this.actionBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.actionBar.setTitle(LocaleController.getString(R.string.PollResults));
        if (this.poll.quiz) {
            actionBar = this.actionBar;
            pluralString = LocaleController.formatPluralString("Answer", tL_messageMediaPoll.results.total_voters, new Object[0]);
        } else {
            actionBar = this.actionBar;
            pluralString = LocaleController.formatPluralString("Vote", tL_messageMediaPoll.results.total_voters, new Object[0]);
        }
        actionBar.setSubtitle(pluralString);
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.PollVotesAlert.8
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i12) {
                if (i12 == -1) {
                    PollVotesAlert.this.lambda$new$0();
                }
            }
        });
        View view = new View(parentActivity);
        this.actionBarShadow = view;
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.actionBarShadow.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        this.containerView.addView(this.actionBarShadow, LayoutHelper.createFrame(-1, 1.0f));
    }

    static /* synthetic */ float access$3116(PollVotesAlert pollVotesAlert, float f) {
        float f2 = pollVotesAlert.totalTranslation + f;
        pollVotesAlert.totalTranslation = f2;
        return f2;
    }

    static /* synthetic */ float access$3124(PollVotesAlert pollVotesAlert, float f) {
        float f2 = pollVotesAlert.totalTranslation - f;
        pollVotesAlert.totalTranslation = f2;
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Integer[] numArr, int i, TLObject tLObject, ChatActivity chatActivity, ArrayList arrayList, TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters) {
        RecyclerView.ViewHolder viewHolderFindContainingViewHolder;
        this.queries.remove(numArr[i]);
        if (tLObject == null) {
            lambda$new$0();
            return;
        }
        TLRPC.TL_messages_votesList tL_messages_votesList = (TLRPC.TL_messages_votesList) tLObject;
        chatActivity.getMessagesController().putUsers(tL_messages_votesList.users, false);
        if (!tL_messages_votesList.votes.isEmpty()) {
            arrayList.add(new VotesList(tL_messages_votesList, tL_pollAnswerVoters.option));
        }
        if (this.queries.isEmpty()) {
            int size = arrayList.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                VotesList votesList = (VotesList) arrayList.get(i2);
                int size2 = this.voters.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size2) {
                        VotesList votesList2 = (VotesList) this.voters.get(i3);
                        if (Arrays.equals(votesList.option, votesList2.option)) {
                            votesList2.next_offset = votesList.next_offset;
                            if (votesList2.count != votesList.count || votesList2.votes.size() != votesList.votes.size()) {
                                z = true;
                            }
                            votesList2.count = votesList.count;
                            votesList2.users = votesList.users;
                            votesList2.votes = votesList.votes;
                        } else {
                            i3++;
                        }
                    }
                }
            }
            this.loadingResults = false;
            RecyclerListView recyclerListView = this.listView;
            if (recyclerListView != null) {
                if (this.currentSheetAnimationType != 0 || this.startAnimationRunnable != null || z) {
                    if (z) {
                        updateButtons();
                    }
                    this.listAdapter.notifyDataSetChanged();
                    return;
                }
                int childCount = recyclerListView.getChildCount();
                ArrayList arrayList2 = new ArrayList();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = this.listView.getChildAt(i4);
                    if ((childAt instanceof UserCell) && (viewHolderFindContainingViewHolder = this.listView.findContainingViewHolder(childAt)) != null) {
                        UserCell userCell = (UserCell) childAt;
                        userCell.animators = arrayList2;
                        userCell.setEnabled(true);
                        this.listAdapter.onViewAttachedToWindow(viewHolderFindContainingViewHolder);
                        userCell.animators = null;
                    }
                }
                if (!arrayList2.isEmpty()) {
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(arrayList2);
                    animatorSet.setDuration(180L);
                    animatorSet.start();
                }
                this.loadingResults = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final Integer[] numArr, final int i, final ChatActivity chatActivity, final ArrayList arrayList, final TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(numArr, i, tLObject, chatActivity, arrayList, tL_pollAnswerVoters);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(VotesList votesList, TLObject tLObject, ChatActivity chatActivity) {
        if (isShowing()) {
            this.loadingMore.remove(votesList);
            if (tLObject != null) {
                TLRPC.TL_messages_votesList tL_messages_votesList = (TLRPC.TL_messages_votesList) tLObject;
                chatActivity.getMessagesController().putUsers(tL_messages_votesList.users, false);
                votesList.votes.addAll(tL_messages_votesList.votes);
                votesList.next_offset = tL_messages_votesList.next_offset;
                animateSectionUpdates(null);
                this.listAdapter.update(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(final VotesList votesList, final ChatActivity chatActivity, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2(votesList, tLObject, chatActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(final ChatActivity chatActivity, View view, int i) {
        long j;
        String str;
        TLRPC.Chat currentChat;
        TLRPC.User currentUser;
        if (chatActivity == null || chatActivity.getParentActivity() == null) {
            return;
        }
        ArrayList arrayList = this.queries;
        if (arrayList == null || arrayList.isEmpty()) {
            int i2 = 0;
            if (!(view instanceof TextCell)) {
                if (view instanceof UserCell) {
                    UserCell userCell = (UserCell) view;
                    if (userCell.currentUser == null && userCell.currentChat == null) {
                        return;
                    }
                    Bundle bundle = new Bundle();
                    if (userCell.currentUser != null) {
                        j = userCell.currentUser.id;
                        str = "user_id";
                    } else {
                        j = userCell.currentChat.id;
                        str = "chat_id";
                    }
                    bundle.putLong(str, j);
                    lambda$new$0();
                    ProfileActivity profileActivity = new ProfileActivity(bundle);
                    if (userCell.currentUser == null ? !((currentChat = chatActivity.getCurrentChat()) == null || currentChat.id != userCell.currentChat.id) : !((currentUser = chatActivity.getCurrentUser()) == null || currentUser.id != userCell.currentUser.id)) {
                        i2 = 1;
                    }
                    profileActivity.setPlayProfileAnimation(i2);
                    chatActivity.presentFragment(profileActivity);
                    return;
                }
                return;
            }
            int sectionForPosition = this.listAdapter.getSectionForPosition(i) - 1;
            int positionInSectionForPosition = this.listAdapter.getPositionInSectionForPosition(i) - 1;
            if (positionInSectionForPosition <= 0 || sectionForPosition < 0) {
                return;
            }
            final VotesList votesList = (VotesList) this.voters.get(sectionForPosition);
            if (positionInSectionForPosition != votesList.getCount() || this.loadingMore.contains(votesList)) {
                return;
            }
            if (votesList.collapsed && votesList.collapsedCount < votesList.votes.size()) {
                int iMin = Math.min(votesList.collapsedCount + 50, votesList.votes.size());
                votesList.collapsedCount = iMin;
                if (iMin == votesList.votes.size()) {
                    votesList.collapsed = false;
                }
                animateSectionUpdates(null);
                this.listAdapter.update(true);
                return;
            }
            this.loadingMore.add(votesList);
            TLRPC.TL_messages_getPollVotes tL_messages_getPollVotes = new TLRPC.TL_messages_getPollVotes();
            tL_messages_getPollVotes.peer = this.peer;
            tL_messages_getPollVotes.id = this.messageObject.getId();
            tL_messages_getPollVotes.limit = 50;
            int i3 = tL_messages_getPollVotes.flags;
            tL_messages_getPollVotes.option = votesList.option;
            tL_messages_getPollVotes.flags = i3 | 3;
            tL_messages_getPollVotes.offset = votesList.next_offset;
            this.chatActivity.getConnectionsManager().sendRequest(tL_messages_getPollVotes, new RequestDelegate() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$new$3(votesList, chatActivity, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateButtons$5(Button button, Button button2) {
        if (button.decimal > button2.decimal) {
            return -1;
        }
        return button.decimal < button2.decimal ? 1 : 0;
    }

    public static void showForPoll(ChatActivity chatActivity, MessageObject messageObject) {
        if (chatActivity == null || chatActivity.getParentActivity() == null) {
            return;
        }
        chatActivity.showDialog(new PollVotesAlert(chatActivity, messageObject));
    }

    private void updateButtons() {
        this.votesPercents.clear();
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) this.messageObject.messageOwner.media;
        ArrayList arrayList = new ArrayList();
        int size = this.voters.size();
        int i = 100;
        boolean z = false;
        int i2 = 0;
        int iMax = 0;
        for (int i3 = 0; i3 < size; i3++) {
            VotesList votesList = (VotesList) this.voters.get(i3);
            Button button = new Button();
            arrayList.add(button);
            this.votesPercents.put(votesList, button);
            if (!tL_messageMediaPoll.results.results.isEmpty()) {
                int size2 = tL_messageMediaPoll.results.results.size();
                int i4 = 0;
                while (true) {
                    if (i4 < size2) {
                        TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters = (TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i4);
                        if (Arrays.equals(votesList.option, tL_pollAnswerVoters.option)) {
                            button.votesCount = tL_pollAnswerVoters.voters;
                            button.decimal = (tL_pollAnswerVoters.voters / tL_messageMediaPoll.results.total_voters) * 100.0f;
                            button.percent = (int) button.decimal;
                            Button.access$4024(button, button.percent);
                            if (i2 == 0) {
                                i2 = button.percent;
                            } else if (button.percent != 0 && i2 != button.percent) {
                                z = true;
                            }
                            i -= button.percent;
                            iMax = Math.max(button.percent, iMax);
                        } else {
                            i4++;
                        }
                    }
                }
            }
        }
        if (!z || i == 0) {
            return;
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda3
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return PollVotesAlert.lambda$updateButtons$5((PollVotesAlert.Button) obj, (PollVotesAlert.Button) obj2);
            }
        });
        int iMin = Math.min(i, arrayList.size());
        for (int i5 = 0; i5 < iMin; i5++) {
            Button.access$4112((Button) arrayList.get(i5), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout(boolean z) {
        if (this.listView.getChildCount() <= 0) {
            RecyclerListView recyclerListView = this.listView;
            int paddingTop = recyclerListView.getPaddingTop();
            this.scrollOffsetY = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            this.containerView.invalidate();
            return;
        }
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt.getTop();
        int iDp = AndroidUtilities.dp(7.0f);
        if (top < AndroidUtilities.dp(7.0f) || holder == null || holder.getAdapterPosition() != 0) {
            top = iDp;
        }
        boolean z2 = top <= AndroidUtilities.dp(12.0f);
        if ((z2 && this.actionBar.getTag() == null) || (!z2 && this.actionBar.getTag() != null)) {
            this.actionBar.setTag(z2 ? 1 : null);
            AnimatorSet animatorSet = this.actionBarAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.actionBarAnimation = null;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.actionBarAnimation = animatorSet2;
            animatorSet2.setDuration(180L);
            AnimatorSet animatorSet3 = this.actionBarAnimation;
            ActionBar actionBar = this.actionBar;
            Property property = View.ALPHA;
            float f = BitmapDescriptorFactory.HUE_RED;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionBar, (Property<ActionBar, Float>) property, z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            View view = this.actionBarShadow;
            if (z2) {
                f = 1.0f;
            }
            animatorSet3.playTogether(objectAnimatorOfFloat, ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f));
            this.actionBarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PollVotesAlert.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    PollVotesAlert.this.actionBarAnimation = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }
            });
            this.actionBarAnimation.start();
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.listView.getLayoutParams();
        int iDp2 = top + (layoutParams.topMargin - AndroidUtilities.dp(11.0f));
        if (this.scrollOffsetY != iDp2) {
            RecyclerListView recyclerListView2 = this.listView;
            this.scrollOffsetY = iDp2;
            recyclerListView2.setTopGlowOffset(iDp2 - layoutParams.topMargin);
            this.containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaceholder() {
        if (this.placeholderPaint == null) {
            return;
        }
        int color = Theme.getColor(Theme.key_dialogBackground);
        int color2 = Theme.getColor(Theme.key_dialogBackgroundGray);
        int averageColor = AndroidUtilities.getAverageColor(color2, color);
        this.placeholderPaint.setColor(color2);
        float fDp = AndroidUtilities.dp(500.0f);
        this.gradientWidth = fDp;
        LinearGradient linearGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fDp, BitmapDescriptorFactory.HUE_RED, new int[]{color2, averageColor, color2}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.18f, 0.36f}, Shader.TileMode.REPEAT);
        this.placeholderGradient = linearGradient;
        this.placeholderPaint.setShader(linearGradient);
        Matrix matrix = new Matrix();
        this.placeholderMatrix = matrix;
        this.placeholderGradient.setLocalMatrix(matrix);
    }

    public void animateSectionUpdates(View view) {
        TLRPC.Message message;
        int i = -2;
        while (i < this.listView.getChildCount()) {
            View pinnedHeader = i == -2 ? view : i == -1 ? this.listView.getPinnedHeader() : this.listView.getChildAt(i);
            if (pinnedHeader instanceof SectionCell) {
                int i2 = R.id.object_tag;
                if (pinnedHeader.getTag(i2) instanceof VotesList) {
                    SectionCell sectionCell = (SectionCell) pinnedHeader;
                    VotesList votesList = (VotesList) pinnedHeader.getTag(i2);
                    int size = this.poll.answers.size();
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        if (i4 < size) {
                            TLRPC.PollAnswer pollAnswer = (TLRPC.PollAnswer) this.poll.answers.get(i4);
                            if (!Arrays.equals(pollAnswer.option, votesList.option) || ((Button) this.votesPercents.get(votesList)) == null) {
                                i4++;
                            } else {
                                TLRPC.TL_textWithEntities tL_textWithEntities = pollAnswer.text;
                                MessageObject messageObject = this.messageObject;
                                if (messageObject != null && messageObject.translated && (message = messageObject.messageOwner) != null && message.translatedPoll != null) {
                                    while (true) {
                                        if (i3 >= this.messageObject.messageOwner.translatedPoll.answers.size()) {
                                            break;
                                        }
                                        TLRPC.PollAnswer pollAnswer2 = this.messageObject.messageOwner.translatedPoll.answers.get(i3);
                                        if (Arrays.equals(pollAnswer2.option, pollAnswer.option)) {
                                            tL_textWithEntities = pollAnswer2.text;
                                            break;
                                        }
                                        i3++;
                                    }
                                }
                                sectionCell.setText(tL_textWithEntities == null ? "" : tL_textWithEntities.text, tL_textWithEntities == null ? null : tL_textWithEntities.entities, calcPercent(votesList.option), votesList.count, votesList.getCollapsed(), true);
                                sectionCell.setTag(R.id.object_tag, votesList);
                            }
                        }
                    }
                }
            }
            i++;
        }
        this.listView.relayoutPinnedHeader();
        this.listView.invalidate();
    }

    public int calcPercent(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.voters.size(); i3++) {
            VotesList votesList = (VotesList) this.voters.get(i3);
            if (votesList != null) {
                i += votesList.count;
                if (Arrays.equals(votesList.option, bArr)) {
                    i2 += votesList.count;
                }
            }
        }
        if (i <= 0) {
            return 0;
        }
        return Math.round((i2 / i) * 100.0f);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void dismissInternal() {
        int size = this.queries.size();
        for (int i = 0; i < size; i++) {
            this.chatActivity.getConnectionsManager().cancelRequest(((Integer) this.queries.get(i)).intValue(), true);
        }
        super.dismissInternal();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.PollVotesAlert$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.updatePlaceholder();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.containerView, 0, null, null, null, null, Theme.key_sheet_scrollUp));
        ViewGroup viewGroup = this.containerView;
        Drawable[] drawableArr = {this.shadowDrawable};
        int i = Theme.key_dialogBackground;
        arrayList.add(new ThemeDescription(viewGroup, 0, null, null, drawableArr, null, i));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        ActionBar actionBar = this.actionBar;
        int i2 = ThemeDescription.FLAG_AB_ITEMSCOLOR;
        int i3 = Theme.key_dialogTextBlack;
        arrayList.add(new ThemeDescription(actionBar, i2, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBTITLECOLOR, null, null, null, null, Theme.key_player_actionBarSubtitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.titleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.actionBarShadow, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_dialogShadowLine));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_dialogBackgroundGray));
        int i4 = Theme.key_graySectionText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, new String[]{"middleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, new String[]{"righTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_SECTIONS, new Class[]{SectionCell.class}, null, null, null, Theme.key_graySection));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        return arrayList;
    }
}

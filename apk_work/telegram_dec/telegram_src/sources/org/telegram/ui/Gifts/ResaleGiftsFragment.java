package org.telegram.ui.Gifts;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ShapeDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars$StarGift;
import org.telegram.tgnet.tl.TL_stars$StarGiftAttributeId;
import org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique;
import org.telegram.tgnet.tl.TL_stars$getResaleStarGifts;
import org.telegram.tgnet.tl.TL_stars$resaleStarGifts;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributeBackdrop;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributeCounter;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributeIdBackdrop;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributeIdModel;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributeIdPattern;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributeModel;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributePattern;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextCaption;
import org.telegram.ui.Components.FireworksOverlay;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class ResaleGiftsFragment extends BaseFragment {
    private BackDrawable backDrawable;
    private Filter backdropButton;
    private TextView clearFiltersButton;
    private FrameLayout clearFiltersContainer;
    private Runnable closeParentSheet;
    private final long dialogId;
    private LargeEmptyView emptyView;
    private boolean emptyViewVisible;
    private HorizontalScrollView filterScrollView;
    private LinearLayout filtersContainer;
    private View filtersDivider;
    private FireworksOverlay fireworksOverlay;
    private final long gift_id;
    private final String gift_name;
    private final ResaleGiftsList list;
    private UniversalRecyclerView listView;
    private Filter modelButton;
    private Filter patternButton;
    private Filter sortButton;
    private boolean filtersShown = true;
    private boolean clearFiltersShown = true;

    public static class BackdropItem extends ActionBarMenuSubItem {

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            public static UItem asBackdrop(TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop, int i, String str) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = tL_stars$starGiftAttributeBackdrop;
                uItemOfFactory.text = str;
                uItemOfFactory.intValue = i;
                return uItemOfFactory;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((BackdropItem) view).set((TL_stars$starGiftAttributeBackdrop) uItem.object, uItem.intValue, (String) uItem.text, uItem.checked);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public BackdropItem createView(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new BackdropItem(context, resourcesProvider);
            }
        }

        public BackdropItem(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, false, false, resourcesProvider);
            setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
            setColors(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, resourcesProvider));
            setIconColor(-1);
            this.imageView.setTranslationX(AndroidUtilities.dp(2.0f));
            makeCheckView(2);
            setBackground(null);
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuSubItem, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
                size = AndroidUtilities.dp(250.0f);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        }

        public void set(TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop, int i, String str, boolean z) {
            ShapeDrawable shapeDrawableCreateCircleDrawable = Theme.createCircleDrawable(AndroidUtilities.dp(20.0f), tL_stars$starGiftAttributeBackdrop.center_color | (-16777216));
            CharSequence charSequenceHighlightText = tL_stars$starGiftAttributeBackdrop.name;
            if (!TextUtils.isEmpty(str)) {
                charSequenceHighlightText = AndroidUtilities.highlightText(charSequenceHighlightText, str, this.resourcesProvider);
            }
            if (i > 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceHighlightText);
                spannableStringBuilder.append((CharSequence) "  ");
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) Integer.toString(i));
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), length, spannableStringBuilder.length(), 33);
                charSequenceHighlightText = spannableStringBuilder;
            }
            setTextAndIcon(charSequenceHighlightText, 0, shapeDrawableCreateCircleDrawable);
            setChecked(z);
        }
    }

    public static class EmptyView extends LinearLayout {
        private final BackupImageView imageView;
        private final TextView textView;

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            public static UItem asEmptyView(CharSequence charSequence) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.text = charSequence;
                return uItemOfFactory;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((EmptyView) view).set(uItem.text);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public EmptyView createView(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new EmptyView(context, resourcesProvider);
            }
        }

        public EmptyView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            setOrientation(1);
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setImageDrawable(new RLottieDrawable(R.raw.utyan_empty, "utyan_empty", AndroidUtilities.dp(130.0f), AndroidUtilities.dp(130.0f)));
            addView(backupImageView, LayoutHelper.createLinear(64, 64, 17, 0, 32, 0, 0));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, resourcesProvider));
            textView.setTextSize(1, 14.0f);
            textView.setGravity(17);
            addView(textView, LayoutHelper.createLinear(-1, -2, 7, 12, 12, 12, 24));
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
                size = AndroidUtilities.dp(250.0f);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        }

        public void set(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }
    }

    public static class Filter extends TextView {
        private ColoredImageSpan span;

        public Filter(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            int color = Theme.getColor(Theme.key_actionBarActionModeDefaultIcon, resourcesProvider);
            setTextColor(color);
            setBackground(Theme.createRadSelectorDrawable(Theme.multAlpha(color, 0.08f), Theme.multAlpha(color, 0.15f), AndroidUtilities.dp(13.0f), AndroidUtilities.dp(13.0f)));
            setPadding(AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(11.0f), 0);
            setGravity(17);
            setTypeface(AndroidUtilities.bold());
            ScaleStateListAnimator.apply(this);
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(R.drawable.arrows_select);
            this.span = coloredImageSpan;
            coloredImageSpan.spaceScaleX = 0.8f;
            coloredImageSpan.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(1.0f));
        }

        @Override // android.widget.TextView, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(26.0f), 1073741824));
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void setSorting(ResaleGiftsList.Sorting sorting) {
            ColoredImageSpan coloredImageSpan;
            int i;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("v ");
            if (sorting == ResaleGiftsList.Sorting.BY_DATE) {
                coloredImageSpan = new ColoredImageSpan(R.drawable.mini_gift_sorting_date);
                spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
                i = R.string.ResellGiftFilterSortDateShort;
            } else if (sorting == ResaleGiftsList.Sorting.BY_PRICE) {
                coloredImageSpan = new ColoredImageSpan(R.drawable.mini_gift_sorting_price);
                spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
                i = R.string.ResellGiftFilterSortPriceShort;
            } else {
                if (sorting != ResaleGiftsList.Sorting.BY_NUMBER) {
                    coloredImageSpan = null;
                    if (coloredImageSpan != null) {
                        coloredImageSpan.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(1.0f));
                    }
                    setText(spannableStringBuilder);
                }
                coloredImageSpan = new ColoredImageSpan(R.drawable.mini_gift_sorting_num);
                spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
                i = R.string.ResellGiftFilterSortNumberShort;
            }
            spannableStringBuilder.append((CharSequence) LocaleController.getString(i));
            if (coloredImageSpan != null) {
            }
            setText(spannableStringBuilder);
        }

        public void setValue(CharSequence charSequence) {
            SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence).append((CharSequence) " v");
            spannableStringBuilderAppend.setSpan(this.span, spannableStringBuilderAppend.length() - 1, spannableStringBuilderAppend.length(), 33);
            setText(spannableStringBuilderAppend);
        }
    }

    public static class LargeEmptyView extends FrameLayout {
        private final TextView buttonView;
        private final BackupImageView imageView;
        private final LinearLayout layout;
        private final TextView subtitleView;
        private final TextView titleView;

        public LargeEmptyView(Context context, View.OnClickListener onClickListener, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            LinearLayout linearLayout = new LinearLayout(context);
            this.layout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2, 23));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setImageDrawable(new RLottieDrawable(R.raw.utyan_empty, "utyan_empty", AndroidUtilities.dp(130.0f), AndroidUtilities.dp(130.0f)));
            linearLayout.addView(backupImageView, LayoutHelper.createLinear(NotificationCenter.walletPendingTransactionsChanged, NotificationCenter.walletPendingTransactionsChanged, 17));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            textView.setTextSize(1, 17.0f);
            textView.setGravity(17);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setText(LocaleController.getString(R.string.Gift2ResaleFiltersEmptyTitle));
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 17, 32, 12, 32, 9));
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            this.subtitleView = linksTextView;
            linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, resourcesProvider));
            linksTextView.setTextSize(1, 14.0f);
            linksTextView.setGravity(17);
            linksTextView.setText(LocaleController.getString(R.string.Gift2ResaleFiltersEmptySubtitle));
            linksTextView.setMaxWidth(AndroidUtilities.dp(200.0f));
            linearLayout.addView(linksTextView, LayoutHelper.createLinear(-2, -2, 17, 32, 0, 32, 12));
            TextView textView2 = new TextView(context);
            this.buttonView = textView2;
            int i = Theme.key_featuredStickers_addButton;
            textView2.setTextColor(Theme.getColor(i, resourcesProvider));
            textView2.setBackground(Theme.createRadSelectorDrawable(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.1f), 6, 6));
            textView2.setGravity(17);
            textView2.setText(LocaleController.getString(R.string.Gift2ResaleFiltersEmptyClear));
            textView2.setPadding(AndroidUtilities.dp(13.0f), 0, AndroidUtilities.dp(13.0f), 0);
            ScaleStateListAnimator.apply(textView2);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-2, 27, 17, 32, 0, 32, 12));
            textView2.setOnClickListener(onClickListener);
        }
    }

    public static class ModelItem extends ActionBarMenuSubItem {
        private final int currentAccount;
        private AnimatedEmojiDrawable emojiDrawable;
        private long emojiDrawableId;

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            public static UItem asModel(TL_stars$starGiftAttributeModel tL_stars$starGiftAttributeModel, int i, String str) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = tL_stars$starGiftAttributeModel;
                uItemOfFactory.text = str;
                uItemOfFactory.intValue = i;
                return uItemOfFactory;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((ModelItem) view).set((TL_stars$starGiftAttributeModel) uItem.object, uItem.intValue, (String) uItem.text, uItem.checked);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public ModelItem createView(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new ModelItem(context, i, resourcesProvider);
            }
        }

        public ModelItem(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context, false, false, resourcesProvider);
            this.currentAccount = i;
            setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
            setColors(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, resourcesProvider));
            setIconColor(-1);
            this.imageView.setTranslationX(AndroidUtilities.dp(2.0f));
            this.imageView.setScaleX(1.2f);
            this.imageView.setScaleY(1.2f);
            makeCheckView(2);
            setBackground(null);
            this.imageView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.ModelItem.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (ModelItem.this.emojiDrawable != null) {
                        ModelItem.this.emojiDrawable.addView(ModelItem.this.imageView);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    if (ModelItem.this.emojiDrawable != null) {
                        ModelItem.this.emojiDrawable.removeView(ModelItem.this.imageView);
                    }
                }
            });
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuSubItem, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
                size = AndroidUtilities.dp(250.0f);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        }

        public void set(TL_stars$starGiftAttributeModel tL_stars$starGiftAttributeModel, int i, String str, boolean z) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiDrawable;
            if (animatedEmojiDrawable == null || this.emojiDrawableId != tL_stars$starGiftAttributeModel.document.id) {
                this.emojiDrawableId = tL_stars$starGiftAttributeModel.document.id;
                if (animatedEmojiDrawable != null) {
                    animatedEmojiDrawable.removeView(this.imageView);
                }
                this.emojiDrawable = new AnimatedEmojiDrawable(3, this.currentAccount, tL_stars$starGiftAttributeModel.document) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.ModelItem.2
                    @Override // android.graphics.drawable.Drawable
                    public int getIntrinsicHeight() {
                        return AndroidUtilities.dp(24.0f);
                    }

                    @Override // android.graphics.drawable.Drawable
                    public int getIntrinsicWidth() {
                        return AndroidUtilities.dp(24.0f);
                    }
                };
            }
            if (this.imageView.isAttachedToWindow()) {
                this.emojiDrawable.addView(this.imageView);
            }
            CharSequence charSequenceHighlightText = tL_stars$starGiftAttributeModel.name;
            if (!TextUtils.isEmpty(str)) {
                charSequenceHighlightText = AndroidUtilities.highlightText(charSequenceHighlightText, str, this.resourcesProvider);
            }
            if (i > 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceHighlightText);
                spannableStringBuilder.append((CharSequence) "  ");
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) Integer.toString(i));
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), length, spannableStringBuilder.length(), 33);
                charSequenceHighlightText = spannableStringBuilder;
            }
            setTextAndIcon(charSequenceHighlightText, 0, this.emojiDrawable);
            setChecked(z);
        }
    }

    public static class PatternItem extends ActionBarMenuSubItem {
        private final int currentAccount;
        private AnimatedEmojiDrawable emojiDrawable;
        private long emojiDrawableId;

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            public static UItem asPattern(TL_stars$starGiftAttributePattern tL_stars$starGiftAttributePattern, int i, String str) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = tL_stars$starGiftAttributePattern;
                uItemOfFactory.text = str;
                uItemOfFactory.intValue = i;
                return uItemOfFactory;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((PatternItem) view).set((TL_stars$starGiftAttributePattern) uItem.object, uItem.intValue, (String) uItem.text, uItem.checked);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public PatternItem createView(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new PatternItem(context, i, resourcesProvider);
            }
        }

        public PatternItem(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context, false, false, resourcesProvider);
            this.currentAccount = i;
            setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
            setColors(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, resourcesProvider));
            setIconColor(-1);
            this.imageView.setTranslationX(AndroidUtilities.dp(2.0f));
            makeCheckView(2);
            setBackground(null);
            this.imageView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.PatternItem.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (PatternItem.this.emojiDrawable != null) {
                        PatternItem.this.emojiDrawable.addView(PatternItem.this.imageView);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    if (PatternItem.this.emojiDrawable != null) {
                        PatternItem.this.emojiDrawable.removeView(PatternItem.this.imageView);
                    }
                }
            });
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuSubItem, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
                size = AndroidUtilities.dp(250.0f);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        }

        public void set(TL_stars$starGiftAttributePattern tL_stars$starGiftAttributePattern, int i, String str, boolean z) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiDrawable;
            if (animatedEmojiDrawable == null || this.emojiDrawableId != tL_stars$starGiftAttributePattern.document.id) {
                this.emojiDrawableId = tL_stars$starGiftAttributePattern.document.id;
                if (animatedEmojiDrawable != null) {
                    animatedEmojiDrawable.removeView(this.imageView);
                }
                AnimatedEmojiDrawable animatedEmojiDrawable2 = new AnimatedEmojiDrawable(3, this.currentAccount, tL_stars$starGiftAttributePattern.document) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.PatternItem.2
                    @Override // android.graphics.drawable.Drawable
                    public int getIntrinsicHeight() {
                        return AndroidUtilities.dp(24.0f);
                    }

                    @Override // android.graphics.drawable.Drawable
                    public int getIntrinsicWidth() {
                        return AndroidUtilities.dp(24.0f);
                    }
                };
                this.emojiDrawable = animatedEmojiDrawable2;
                animatedEmojiDrawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            }
            if (this.imageView.isAttachedToWindow()) {
                this.emojiDrawable.addView(this.imageView);
            }
            CharSequence charSequenceHighlightText = tL_stars$starGiftAttributePattern.name;
            if (!TextUtils.isEmpty(str)) {
                charSequenceHighlightText = AndroidUtilities.highlightText(charSequenceHighlightText, str, this.resourcesProvider);
            }
            if (i > 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceHighlightText);
                spannableStringBuilder.append((CharSequence) "  ");
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) Integer.toString(i));
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), length, spannableStringBuilder.length(), 33);
                charSequenceHighlightText = spannableStringBuilder;
            }
            setTextAndIcon(charSequenceHighlightText, 0, this.emojiDrawable);
            setChecked(z);
        }
    }

    public static class ResaleGiftsList implements StarsController.IGiftsList {
        private final int account;
        private long attributes_hash;
        private final long gift_id;
        private String last_offset;
        private boolean loading;
        private final Utilities.Callback onUpdate;
        private int totalCount;
        public final ArrayList gifts = new ArrayList();
        public final ArrayList modelAttributes = new ArrayList();
        public final ArrayList backdropAttributes = new ArrayList();
        public final ArrayList patternAttributes = new ArrayList();
        public final HashSet notSelectedModelAttributes = new HashSet();
        public final HashSet notSelectedBackdropAttributes = new HashSet();
        public final HashSet notSelectedPatternAttributes = new HashSet();
        public final HashMap modelAttributesCounter = new HashMap();
        public final HashMap backdropAttributesCounter = new HashMap();
        public final HashMap patternAttributesCounter = new HashMap();
        private Sorting sorting = Sorting.BY_PRICE;
        private boolean endReached = false;
        private int reqId = -1;

        public enum Sorting {
            BY_PRICE(R.string.ResellGiftFilterSortPriceShort, R.string.ResellGiftFilterSortPrice),
            BY_DATE(R.string.ResellGiftFilterSortDateShort, R.string.ResellGiftFilterSortDate),
            BY_NUMBER(R.string.ResellGiftFilterSortNumberShort, R.string.ResellGiftFilterSortNumber);

            public int buttonStringResId;
            public int shortResId;

            Sorting(int i, int i2) {
                this.shortResId = i;
                this.buttonStringResId = i2;
            }
        }

        public ResaleGiftsList(int i, long j, Utilities.Callback callback) {
            this.account = i;
            this.gift_id = j;
            this.onUpdate = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(TLObject tLObject, TL_stars$getResaleStarGifts tL_stars$getResaleStarGifts) {
            boolean z;
            HashMap map;
            Object objValueOf;
            this.reqId = -1;
            if (tLObject instanceof TL_stars$resaleStarGifts) {
                TL_stars$resaleStarGifts tL_stars$resaleStarGifts = (TL_stars$resaleStarGifts) tLObject;
                MessagesController.getInstance(this.account).putUsers(tL_stars$resaleStarGifts.users, false);
                MessagesController.getInstance(this.account).putChats(tL_stars$resaleStarGifts.chats, false);
                this.totalCount = tL_stars$resaleStarGifts.count;
                boolean z2 = true;
                if (TextUtils.isEmpty(tL_stars$getResaleStarGifts.offset)) {
                    this.gifts.clear();
                    z = true;
                } else {
                    z = false;
                }
                Iterator it = tL_stars$resaleStarGifts.gifts.iterator();
                while (it.hasNext()) {
                    TL_stars$StarGift tL_stars$StarGift = (TL_stars$StarGift) it.next();
                    if (tL_stars$StarGift instanceof TL_stars$TL_starGiftUnique) {
                        this.gifts.add((TL_stars$TL_starGiftUnique) tL_stars$StarGift);
                    }
                }
                if (this.gifts.size() < this.totalCount && !TextUtils.isEmpty(tL_stars$resaleStarGifts.next_offset)) {
                    z2 = false;
                }
                this.endReached = z2;
                this.last_offset = tL_stars$resaleStarGifts.next_offset;
                this.loading = false;
                ArrayList arrayList = tL_stars$resaleStarGifts.attributes;
                if (arrayList != null && !arrayList.isEmpty()) {
                    this.modelAttributes.clear();
                    this.backdropAttributes.clear();
                    this.patternAttributes.clear();
                    this.modelAttributes.addAll(StarsController.findAttributes(tL_stars$resaleStarGifts.attributes, TL_stars$starGiftAttributeModel.class));
                    this.backdropAttributes.addAll(StarsController.findAttributes(tL_stars$resaleStarGifts.attributes, TL_stars$starGiftAttributeBackdrop.class));
                    this.patternAttributes.addAll(StarsController.findAttributes(tL_stars$resaleStarGifts.attributes, TL_stars$starGiftAttributePattern.class));
                    this.attributes_hash = tL_stars$resaleStarGifts.attributes_hash;
                }
                if (!tL_stars$resaleStarGifts.counters.isEmpty()) {
                    this.backdropAttributesCounter.clear();
                    this.patternAttributesCounter.clear();
                    this.modelAttributesCounter.clear();
                    Iterator it2 = tL_stars$resaleStarGifts.counters.iterator();
                    while (it2.hasNext()) {
                        TL_stars$starGiftAttributeCounter tL_stars$starGiftAttributeCounter = (TL_stars$starGiftAttributeCounter) it2.next();
                        TL_stars$StarGiftAttributeId tL_stars$StarGiftAttributeId = tL_stars$starGiftAttributeCounter.attribute;
                        if (tL_stars$StarGiftAttributeId instanceof TL_stars$starGiftAttributeIdBackdrop) {
                            map = this.backdropAttributesCounter;
                            objValueOf = Integer.valueOf(tL_stars$StarGiftAttributeId.backdrop_id);
                        } else {
                            if (tL_stars$StarGiftAttributeId instanceof TL_stars$starGiftAttributeIdPattern) {
                                map = this.patternAttributesCounter;
                            } else if (tL_stars$StarGiftAttributeId instanceof TL_stars$starGiftAttributeIdModel) {
                                map = this.modelAttributesCounter;
                            }
                            objValueOf = Long.valueOf(tL_stars$StarGiftAttributeId.document_id);
                        }
                        map.put(objValueOf, Integer.valueOf(tL_stars$starGiftAttributeCounter.count));
                    }
                }
                Utilities.Callback callback = this.onUpdate;
                if (callback != null) {
                    callback.run(Boolean.valueOf(z));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$1(final TL_stars$getResaleStarGifts tL_stars$getResaleStarGifts, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$ResaleGiftsList$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$0(tLObject, tL_stars$getResaleStarGifts);
                }
            });
        }

        public void cancel() {
            if (this.reqId >= 0) {
                ConnectionsManager.getInstance(this.account).cancelRequest(this.reqId, true);
                this.reqId = -1;
            }
            this.loading = false;
        }

        @Override // org.telegram.ui.Stars.StarsController.IGiftsList
        public Object get(int i) {
            return this.gifts.get(i);
        }

        @Override // org.telegram.ui.Stars.StarsController.IGiftsList
        public int getLoadedCount() {
            return this.gifts.size();
        }

        public Sorting getSorting() {
            return this.sorting;
        }

        @Override // org.telegram.ui.Stars.StarsController.IGiftsList
        public int getTotalCount() {
            return this.totalCount;
        }

        @Override // org.telegram.ui.Stars.StarsController.IGiftsList
        public int indexOf(Object obj) {
            return this.gifts.indexOf(obj);
        }

        @Override // org.telegram.ui.Stars.StarsController.IGiftsList
        public void load() {
            load(false);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0106  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void load(boolean z) {
            long j;
            if (this.loading) {
                return;
            }
            if (z || !this.endReached) {
                this.loading = true;
                final TL_stars$getResaleStarGifts tL_stars$getResaleStarGifts = new TL_stars$getResaleStarGifts();
                tL_stars$getResaleStarGifts.gift_id = this.gift_id;
                String str = this.last_offset;
                if (str == null) {
                    str = "";
                }
                tL_stars$getResaleStarGifts.offset = str;
                tL_stars$getResaleStarGifts.limit = 15;
                Sorting sorting = this.sorting;
                if (sorting == Sorting.BY_NUMBER) {
                    tL_stars$getResaleStarGifts.sort_by_num = true;
                } else {
                    if (sorting != Sorting.BY_DATE) {
                        if (sorting == Sorting.BY_PRICE) {
                            tL_stars$getResaleStarGifts.sort_by_num = false;
                            tL_stars$getResaleStarGifts.sort_by_price = true;
                        }
                        j = this.attributes_hash;
                        if (j == 0) {
                            tL_stars$getResaleStarGifts.flags = 1 | tL_stars$getResaleStarGifts.flags;
                            tL_stars$getResaleStarGifts.attributes_hash = j;
                        } else if (this.modelAttributes.isEmpty() && this.backdropAttributes.isEmpty() && this.patternAttributes.isEmpty()) {
                            tL_stars$getResaleStarGifts.flags = 1 | tL_stars$getResaleStarGifts.flags;
                            tL_stars$getResaleStarGifts.attributes_hash = 0L;
                        }
                        if (this.notSelectedModelAttributes.isEmpty() || !this.notSelectedBackdropAttributes.isEmpty() || !this.notSelectedPatternAttributes.isEmpty()) {
                            tL_stars$getResaleStarGifts.flags |= 8;
                            if (!this.notSelectedModelAttributes.isEmpty()) {
                                Iterator it = this.modelAttributes.iterator();
                                while (it.hasNext()) {
                                    TL_stars$starGiftAttributeModel tL_stars$starGiftAttributeModel = (TL_stars$starGiftAttributeModel) it.next();
                                    if (!this.notSelectedModelAttributes.contains(Long.valueOf(tL_stars$starGiftAttributeModel.document.id))) {
                                        TL_stars$starGiftAttributeIdModel tL_stars$starGiftAttributeIdModel = new TL_stars$starGiftAttributeIdModel();
                                        tL_stars$starGiftAttributeIdModel.document_id = tL_stars$starGiftAttributeModel.document.id;
                                        tL_stars$getResaleStarGifts.attributes.add(tL_stars$starGiftAttributeIdModel);
                                    }
                                }
                            }
                            if (!this.notSelectedBackdropAttributes.isEmpty()) {
                                Iterator it2 = this.backdropAttributes.iterator();
                                while (it2.hasNext()) {
                                    TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop = (TL_stars$starGiftAttributeBackdrop) it2.next();
                                    if (!this.notSelectedBackdropAttributes.contains(Integer.valueOf(tL_stars$starGiftAttributeBackdrop.backdrop_id))) {
                                        TL_stars$starGiftAttributeIdBackdrop tL_stars$starGiftAttributeIdBackdrop = new TL_stars$starGiftAttributeIdBackdrop();
                                        tL_stars$starGiftAttributeIdBackdrop.backdrop_id = tL_stars$starGiftAttributeBackdrop.backdrop_id;
                                        tL_stars$getResaleStarGifts.attributes.add(tL_stars$starGiftAttributeIdBackdrop);
                                    }
                                }
                            }
                            if (!this.notSelectedPatternAttributes.isEmpty()) {
                                Iterator it3 = this.patternAttributes.iterator();
                                while (it3.hasNext()) {
                                    TL_stars$starGiftAttributePattern tL_stars$starGiftAttributePattern = (TL_stars$starGiftAttributePattern) it3.next();
                                    if (!this.notSelectedPatternAttributes.contains(Long.valueOf(tL_stars$starGiftAttributePattern.document.id))) {
                                        TL_stars$starGiftAttributeIdPattern tL_stars$starGiftAttributeIdPattern = new TL_stars$starGiftAttributeIdPattern();
                                        tL_stars$starGiftAttributeIdPattern.document_id = tL_stars$starGiftAttributePattern.document.id;
                                        tL_stars$getResaleStarGifts.attributes.add(tL_stars$starGiftAttributeIdPattern);
                                    }
                                }
                            }
                        }
                        this.reqId = ConnectionsManager.getInstance(this.account).sendRequest(tL_stars$getResaleStarGifts, new RequestDelegate() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$ResaleGiftsList$$ExternalSyntheticLambda0
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$load$1(tL_stars$getResaleStarGifts, tLObject, tL_error);
                            }
                        });
                    }
                    tL_stars$getResaleStarGifts.sort_by_num = false;
                }
                tL_stars$getResaleStarGifts.sort_by_price = false;
                j = this.attributes_hash;
                if (j == 0) {
                }
                if (this.notSelectedModelAttributes.isEmpty()) {
                    tL_stars$getResaleStarGifts.flags |= 8;
                    if (!this.notSelectedModelAttributes.isEmpty()) {
                    }
                    if (!this.notSelectedBackdropAttributes.isEmpty()) {
                    }
                    if (!this.notSelectedPatternAttributes.isEmpty()) {
                    }
                }
                this.reqId = ConnectionsManager.getInstance(this.account).sendRequest(tL_stars$getResaleStarGifts, new RequestDelegate() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$ResaleGiftsList$$ExternalSyntheticLambda0
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$load$1(tL_stars$getResaleStarGifts, tLObject, tL_error);
                    }
                });
            }
        }

        public void reload() {
            cancel();
            this.last_offset = null;
            this.gifts.clear();
            load(true);
            Utilities.Callback callback = this.onUpdate;
            if (callback != null) {
                callback.run(Boolean.TRUE);
            }
        }

        public void setSorting(Sorting sorting) {
            if (this.sorting != sorting) {
                this.sorting = sorting;
                reload();
            }
        }
    }

    public ResaleGiftsFragment(long j, String str, long j2, Theme.ResourcesProvider resourcesProvider) {
        this.dialogId = j;
        this.gift_name = str;
        this.gift_id = j2;
        this.resourceProvider = resourcesProvider;
        ResaleGiftsList resaleGiftsList = new ResaleGiftsList(this.currentAccount, j2, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.updateList(((Boolean) obj).booleanValue());
            }
        });
        this.list = resaleGiftsList;
        resaleGiftsList.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        Iterator it = this.list.gifts.iterator();
        while (it.hasNext()) {
            arrayList.add(GiftSheet.GiftCell.Factory.asStarGift(0, (TL_stars$TL_starGiftUnique) it.next(), false, false, false, true));
        }
        if (this.list.loading || !this.list.endReached) {
            arrayList.add(UItem.asFlicker(-1, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(-2, 34).setSpanCount(1));
            arrayList.add(UItem.asFlicker(-3, 34).setSpanCount(1));
        }
        updateEmptyView(arrayList.isEmpty() && !this.list.loading);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLoadingVisible() {
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            if (this.listView.getChildAt(i) instanceof FlickerLoadingView) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(StarsIntroActivity.StarsBalanceView starsBalanceView, View view) {
        if (starsBalanceView.lastBalance <= 0) {
            return;
        }
        presentFragment(new StarsIntroActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        this.list.notSelectedBackdropAttributes.clear();
        this.list.notSelectedModelAttributes.clear();
        this.list.notSelectedPatternAttributes.clear();
        this.list.reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(ItemOptions itemOptions, UItem uItem, View view, Integer num, Float f, Float f2) {
        long j = ((TL_stars$starGiftAttributeModel) uItem.object).document.id;
        if (!(!this.list.notSelectedModelAttributes.contains(Long.valueOf(j)))) {
            this.list.notSelectedModelAttributes.remove(Long.valueOf(j));
        } else if (this.list.notSelectedModelAttributes.isEmpty()) {
            Iterator it = this.list.modelAttributes.iterator();
            while (it.hasNext()) {
                long j2 = ((TL_stars$starGiftAttributeModel) it.next()).document.id;
                if (j2 != j) {
                    this.list.notSelectedModelAttributes.add(Long.valueOf(j2));
                }
            }
        } else {
            this.list.notSelectedModelAttributes.add(Long.valueOf(j));
        }
        this.list.reload();
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11() {
        if (this.list.notSelectedModelAttributes.isEmpty()) {
            return;
        }
        this.list.notSelectedModelAttributes.clear();
        this.list.reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(Context context, View view) {
        if (this.filtersShown && !this.list.modelAttributes.isEmpty()) {
            final ItemOptions itemOptionsNeedsFocus = ItemOptions.makeOptions((BaseFragment) this, (View) this.modelButton, false, true).setDrawScrim(false).setOnTopOfScrim().translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(-8.0f)).needsFocus();
            itemOptionsNeedsFocus.setOnDismiss(new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    ResaleGiftsFragment.lambda$createView$7(itemOptionsNeedsFocus);
                }
            });
            final String[] strArr = {""};
            final ArrayList arrayList = new ArrayList(this.list.modelAttributes);
            Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda17
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.lambda$createView$8((TL_stars$starGiftAttributeModel) obj, (TL_stars$starGiftAttributeModel) obj2);
                }
            });
            final UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda18
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$createView$9(strArr, arrayList, (ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, new Utilities.Callback5() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda19
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.lambda$createView$10(itemOptionsNeedsFocus, (UItem) obj, (View) obj2, (Integer) obj3, (Float) obj4, (Float) obj5);
                }
            }, null) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.5
                @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min((int) (AndroidUtilities.displaySize.y * 0.35f), View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2)));
                }
            };
            universalRecyclerView.adapter.setApplyBackground(false);
            FrameLayout frameLayout = new FrameLayout(context);
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(R.drawable.smiles_inputsearch);
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), PorterDuff.Mode.SRC_IN));
            frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 19, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            EditTextCaption editTextCaption = new EditTextCaption(context, this.resourceProvider);
            editTextCaption.setTextSize(1, 16.0f);
            editTextCaption.setInputType(573441);
            editTextCaption.setRawInputType(573441);
            editTextCaption.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourceProvider));
            editTextCaption.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider));
            editTextCaption.setCursorSize(AndroidUtilities.dp(19.0f));
            editTextCaption.setCursorWidth(1.5f);
            editTextCaption.setHint(LocaleController.getString(R.string.Gift2ResaleFiltersSearch));
            editTextCaption.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourceProvider));
            editTextCaption.setBackground(null);
            frameLayout.addView(editTextCaption, LayoutHelper.createFrame(-1, -2.0f, 19, 43.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED));
            editTextCaption.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.6
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    strArr[0] = editable.toString();
                    universalRecyclerView.adapter.update(true);
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }
            });
            if (arrayList.size() > 8) {
                itemOptionsNeedsFocus.addView(frameLayout, LayoutHelper.createLinear(-1, 44));
                itemOptionsNeedsFocus.addGap();
            }
            if (!this.list.notSelectedModelAttributes.isEmpty()) {
                itemOptionsNeedsFocus.add(R.drawable.msg_select, LocaleController.getString(R.string.SelectAll), new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$11();
                    }
                });
            }
            itemOptionsNeedsFocus.addView(universalRecyclerView);
            itemOptionsNeedsFocus.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$13(ItemOptions itemOptions) {
        ActionBarPopupWindow actionBarPopupWindow = itemOptions.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            AndroidUtilities.hideKeyboard(actionBarPopupWindow.getContentView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$createView$14(TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop, TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop2) {
        Integer num = (Integer) this.list.backdropAttributesCounter.get(Integer.valueOf(tL_stars$starGiftAttributeBackdrop.backdrop_id));
        Integer num2 = (Integer) this.list.backdropAttributesCounter.get(Integer.valueOf(tL_stars$starGiftAttributeBackdrop2.backdrop_id));
        if (num == null) {
            return 1;
        }
        if (num2 == null) {
            return -1;
        }
        return num2.intValue() - num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15(String[] strArr, ArrayList arrayList, ArrayList arrayList2, UniversalAdapter universalAdapter) {
        String lowerCase = strArr[0].toLowerCase();
        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
        boolean zIsEmpty = this.list.notSelectedBackdropAttributes.isEmpty();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop = (TL_stars$starGiftAttributeBackdrop) it.next();
            boolean z = true;
            boolean z2 = !this.list.notSelectedBackdropAttributes.contains(Integer.valueOf(tL_stars$starGiftAttributeBackdrop.backdrop_id));
            if (!TextUtils.isEmpty(lowerCase) && !tL_stars$starGiftAttributeBackdrop.name.toLowerCase().startsWith(lowerCase) && !tL_stars$starGiftAttributeBackdrop.name.toLowerCase().startsWith(strTranslitSafe)) {
                if (!tL_stars$starGiftAttributeBackdrop.name.toLowerCase().contains(" " + lowerCase)) {
                    if (tL_stars$starGiftAttributeBackdrop.name.toLowerCase().contains(" " + strTranslitSafe)) {
                    }
                }
            }
            Integer num = (Integer) this.list.backdropAttributesCounter.get(Integer.valueOf(tL_stars$starGiftAttributeBackdrop.backdrop_id));
            UItem uItemAsBackdrop = BackdropItem.Factory.asBackdrop(tL_stars$starGiftAttributeBackdrop, num == null ? 0 : num.intValue(), lowerCase);
            if (TextUtils.isEmpty(lowerCase)) {
                z = z2;
            } else if (zIsEmpty || !z2) {
                z = false;
            }
            arrayList2.add(uItemAsBackdrop.setChecked(z));
        }
        if (arrayList2.isEmpty()) {
            arrayList2.add(EmptyView.Factory.asEmptyView(LocaleController.getString(R.string.Gift2ResaleFiltersBackdropEmpty)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16(ItemOptions itemOptions, UItem uItem, View view, Integer num, Float f, Float f2) {
        int i = ((TL_stars$starGiftAttributeBackdrop) uItem.object).backdrop_id;
        if (!(!this.list.notSelectedBackdropAttributes.contains(Integer.valueOf(i)))) {
            this.list.notSelectedBackdropAttributes.remove(Integer.valueOf(i));
        } else if (this.list.notSelectedBackdropAttributes.isEmpty()) {
            Iterator it = this.list.backdropAttributes.iterator();
            while (it.hasNext()) {
                int i2 = ((TL_stars$starGiftAttributeBackdrop) it.next()).backdrop_id;
                if (i2 != i) {
                    this.list.notSelectedBackdropAttributes.add(Integer.valueOf(i2));
                }
            }
        } else {
            this.list.notSelectedBackdropAttributes.add(Integer.valueOf(i));
        }
        this.list.reload();
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17() {
        if (this.list.notSelectedBackdropAttributes.isEmpty()) {
            return;
        }
        this.list.notSelectedBackdropAttributes.clear();
        this.list.reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(Context context, View view) {
        if (this.filtersShown && !this.list.backdropAttributes.isEmpty()) {
            final ItemOptions itemOptionsNeedsFocus = ItemOptions.makeOptions((BaseFragment) this, (View) this.backdropButton, false, true).setDrawScrim(false).setOnTopOfScrim().translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(-8.0f)).needsFocus();
            itemOptionsNeedsFocus.setOnDismiss(new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    ResaleGiftsFragment.lambda$createView$13(itemOptionsNeedsFocus);
                }
            });
            final String[] strArr = {""};
            final ArrayList arrayList = new ArrayList(this.list.backdropAttributes);
            Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda22
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.lambda$createView$14((TL_stars$starGiftAttributeBackdrop) obj, (TL_stars$starGiftAttributeBackdrop) obj2);
                }
            });
            final UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda23
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$createView$15(strArr, arrayList, (ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, new Utilities.Callback5() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.lambda$createView$16(itemOptionsNeedsFocus, (UItem) obj, (View) obj2, (Integer) obj3, (Float) obj4, (Float) obj5);
                }
            }, null) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.7
                @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min((int) (AndroidUtilities.displaySize.y * 0.35f), View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2)));
                }
            };
            universalRecyclerView.adapter.setApplyBackground(false);
            FrameLayout frameLayout = new FrameLayout(context);
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(R.drawable.smiles_inputsearch);
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), PorterDuff.Mode.SRC_IN));
            frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 19, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            EditTextCaption editTextCaption = new EditTextCaption(context, this.resourceProvider);
            editTextCaption.setTextSize(1, 16.0f);
            editTextCaption.setInputType(573441);
            editTextCaption.setRawInputType(573441);
            editTextCaption.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourceProvider));
            editTextCaption.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider));
            editTextCaption.setCursorSize(AndroidUtilities.dp(19.0f));
            editTextCaption.setCursorWidth(1.5f);
            editTextCaption.setHint(LocaleController.getString(R.string.Gift2ResaleFiltersSearch));
            editTextCaption.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourceProvider));
            editTextCaption.setBackground(null);
            frameLayout.addView(editTextCaption, LayoutHelper.createFrame(-1, -2.0f, 19, 43.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED));
            editTextCaption.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.8
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    strArr[0] = editable.toString();
                    universalRecyclerView.adapter.update(true);
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }
            });
            if (arrayList.size() > 8) {
                itemOptionsNeedsFocus.addView(frameLayout, LayoutHelper.createLinear(-1, 44));
                itemOptionsNeedsFocus.addGap();
            }
            if (!this.list.notSelectedBackdropAttributes.isEmpty()) {
                itemOptionsNeedsFocus.add(R.drawable.msg_select, LocaleController.getString(R.string.SelectAll), new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$17();
                    }
                });
            }
            itemOptionsNeedsFocus.addView(universalRecyclerView);
            itemOptionsNeedsFocus.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$19(ItemOptions itemOptions) {
        ActionBarPopupWindow actionBarPopupWindow = itemOptions.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            AndroidUtilities.hideKeyboard(actionBarPopupWindow.getContentView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        this.list.notSelectedBackdropAttributes.clear();
        this.list.notSelectedModelAttributes.clear();
        this.list.notSelectedPatternAttributes.clear();
        this.list.reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$createView$20(TL_stars$starGiftAttributePattern tL_stars$starGiftAttributePattern, TL_stars$starGiftAttributePattern tL_stars$starGiftAttributePattern2) {
        Integer num = (Integer) this.list.patternAttributesCounter.get(Long.valueOf(tL_stars$starGiftAttributePattern.document.id));
        Integer num2 = (Integer) this.list.patternAttributesCounter.get(Long.valueOf(tL_stars$starGiftAttributePattern2.document.id));
        if (num == null) {
            return 1;
        }
        if (num2 == null) {
            return -1;
        }
        return num2.intValue() - num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$21(String[] strArr, ArrayList arrayList, ArrayList arrayList2, UniversalAdapter universalAdapter) {
        String lowerCase = strArr[0].toLowerCase();
        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
        boolean zIsEmpty = this.list.notSelectedPatternAttributes.isEmpty();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TL_stars$starGiftAttributePattern tL_stars$starGiftAttributePattern = (TL_stars$starGiftAttributePattern) it.next();
            boolean z = true;
            boolean z2 = !this.list.notSelectedPatternAttributes.contains(Long.valueOf(tL_stars$starGiftAttributePattern.document.id));
            if (!TextUtils.isEmpty(lowerCase) && !tL_stars$starGiftAttributePattern.name.toLowerCase().startsWith(lowerCase) && !tL_stars$starGiftAttributePattern.name.toLowerCase().startsWith(strTranslitSafe)) {
                if (!tL_stars$starGiftAttributePattern.name.toLowerCase().contains(" " + lowerCase)) {
                    if (tL_stars$starGiftAttributePattern.name.toLowerCase().contains(" " + strTranslitSafe)) {
                    }
                }
            }
            Integer num = (Integer) this.list.patternAttributesCounter.get(Long.valueOf(tL_stars$starGiftAttributePattern.document.id));
            UItem uItemAsPattern = PatternItem.Factory.asPattern(tL_stars$starGiftAttributePattern, num == null ? 0 : num.intValue(), lowerCase);
            if (TextUtils.isEmpty(lowerCase)) {
                z = z2;
            } else if (zIsEmpty || !z2) {
                z = false;
            }
            arrayList2.add(uItemAsPattern.setChecked(z));
        }
        if (arrayList2.isEmpty()) {
            arrayList2.add(EmptyView.Factory.asEmptyView(LocaleController.getString(R.string.Gift2ResaleFiltersSymbolEmpty)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$22(ItemOptions itemOptions, UItem uItem, View view, Integer num, Float f, Float f2) {
        long j = ((TL_stars$starGiftAttributePattern) uItem.object).document.id;
        if (!(!this.list.notSelectedPatternAttributes.contains(Long.valueOf(j)))) {
            this.list.notSelectedPatternAttributes.remove(Long.valueOf(j));
        } else if (this.list.notSelectedPatternAttributes.isEmpty()) {
            Iterator it = this.list.patternAttributes.iterator();
            while (it.hasNext()) {
                long j2 = ((TL_stars$starGiftAttributePattern) it.next()).document.id;
                if (j2 != j) {
                    this.list.notSelectedPatternAttributes.add(Long.valueOf(j2));
                }
            }
        } else {
            this.list.notSelectedPatternAttributes.add(Long.valueOf(j));
        }
        this.list.reload();
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$23() {
        if (this.list.notSelectedPatternAttributes.isEmpty()) {
            return;
        }
        this.list.notSelectedPatternAttributes.clear();
        this.list.reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$24(Context context, View view) {
        if (this.filtersShown && !this.list.patternAttributes.isEmpty()) {
            final ItemOptions itemOptionsNeedsFocus = ItemOptions.makeOptions((BaseFragment) this, (View) this.patternButton, false, true).setDrawScrim(false).setOnTopOfScrim().translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(-8.0f)).needsFocus();
            itemOptionsNeedsFocus.setOnDismiss(new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    ResaleGiftsFragment.lambda$createView$19(itemOptionsNeedsFocus);
                }
            });
            final String[] strArr = {""};
            final ArrayList arrayList = new ArrayList(this.list.patternAttributes);
            Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda12
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.lambda$createView$20((TL_stars$starGiftAttributePattern) obj, (TL_stars$starGiftAttributePattern) obj2);
                }
            });
            final UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda13
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$createView$21(strArr, arrayList, (ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, new Utilities.Callback5() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda14
                @Override // org.telegram.messenger.Utilities.Callback5
                public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    this.f$0.lambda$createView$22(itemOptionsNeedsFocus, (UItem) obj, (View) obj2, (Integer) obj3, (Float) obj4, (Float) obj5);
                }
            }, null) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.9
                @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min((int) (AndroidUtilities.displaySize.y * 0.35f), View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2)));
                }
            };
            universalRecyclerView.adapter.setApplyBackground(false);
            FrameLayout frameLayout = new FrameLayout(context);
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(R.drawable.smiles_inputsearch);
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), PorterDuff.Mode.SRC_IN));
            frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 19, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            EditTextCaption editTextCaption = new EditTextCaption(context, this.resourceProvider);
            editTextCaption.setTextSize(1, 16.0f);
            editTextCaption.setInputType(573441);
            editTextCaption.setRawInputType(573441);
            editTextCaption.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3, this.resourceProvider));
            editTextCaption.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider));
            editTextCaption.setCursorSize(AndroidUtilities.dp(19.0f));
            editTextCaption.setCursorWidth(1.5f);
            editTextCaption.setHint(LocaleController.getString(R.string.Gift2ResaleFiltersSearch));
            editTextCaption.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourceProvider));
            editTextCaption.setBackground(null);
            frameLayout.addView(editTextCaption, LayoutHelper.createFrame(-1, -2.0f, 19, 43.0f, BitmapDescriptorFactory.HUE_RED, 8.0f, BitmapDescriptorFactory.HUE_RED));
            editTextCaption.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.10
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    strArr[0] = editable.toString();
                    universalRecyclerView.adapter.update(true);
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }
            });
            if (arrayList.size() > 8) {
                itemOptionsNeedsFocus.addView(frameLayout, LayoutHelper.createLinear(-1, 44));
                itemOptionsNeedsFocus.addGap();
            }
            if (!this.list.notSelectedPatternAttributes.isEmpty()) {
                itemOptionsNeedsFocus.add(R.drawable.msg_select, LocaleController.getString(R.string.SelectAll), new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$23();
                    }
                });
            }
            itemOptionsNeedsFocus.addView(universalRecyclerView);
            itemOptionsNeedsFocus.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        this.list.setSorting(ResaleGiftsList.Sorting.BY_PRICE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4() {
        this.list.setSorting(ResaleGiftsList.Sorting.BY_DATE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5() {
        this.list.setSorting(ResaleGiftsList.Sorting.BY_NUMBER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        if (this.filtersShown) {
            ItemOptions.makeOptions(this, this.sortButton).add(R.drawable.menu_sort_value, LocaleController.getString(ResaleGiftsList.Sorting.BY_PRICE.buttonStringResId), new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$3();
                }
            }).add(R.drawable.menu_sort_date, LocaleController.getString(ResaleGiftsList.Sorting.BY_DATE.buttonStringResId), new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$4();
                }
            }).add(R.drawable.menu_sort_number, LocaleController.getString(ResaleGiftsList.Sorting.BY_NUMBER.buttonStringResId), new Runnable() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$5();
                }
            }).setDrawScrim(false).setOnTopOfScrim().translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(-8.0f)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$7(ItemOptions itemOptions) {
        ActionBarPopupWindow actionBarPopupWindow = itemOptions.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            AndroidUtilities.hideKeyboard(actionBarPopupWindow.getContentView());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$createView$8(TL_stars$starGiftAttributeModel tL_stars$starGiftAttributeModel, TL_stars$starGiftAttributeModel tL_stars$starGiftAttributeModel2) {
        Integer num = (Integer) this.list.modelAttributesCounter.get(Long.valueOf(tL_stars$starGiftAttributeModel.document.id));
        Integer num2 = (Integer) this.list.modelAttributesCounter.get(Long.valueOf(tL_stars$starGiftAttributeModel2.document.id));
        if (num == null) {
            return 1;
        }
        if (num2 == null) {
            return -1;
        }
        return num2.intValue() - num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(String[] strArr, ArrayList arrayList, ArrayList arrayList2, UniversalAdapter universalAdapter) {
        String lowerCase = strArr[0].toLowerCase();
        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
        boolean zIsEmpty = this.list.notSelectedModelAttributes.isEmpty();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TL_stars$starGiftAttributeModel tL_stars$starGiftAttributeModel = (TL_stars$starGiftAttributeModel) it.next();
            boolean z = true;
            boolean z2 = !this.list.notSelectedModelAttributes.contains(Long.valueOf(tL_stars$starGiftAttributeModel.document.id));
            if (!TextUtils.isEmpty(lowerCase) && !tL_stars$starGiftAttributeModel.name.toLowerCase().startsWith(lowerCase) && !tL_stars$starGiftAttributeModel.name.toLowerCase().startsWith(strTranslitSafe)) {
                if (!tL_stars$starGiftAttributeModel.name.toLowerCase().contains(" " + lowerCase)) {
                    if (tL_stars$starGiftAttributeModel.name.toLowerCase().contains(" " + strTranslitSafe)) {
                    }
                }
            }
            Integer num = (Integer) this.list.modelAttributesCounter.get(Long.valueOf(tL_stars$starGiftAttributeModel.document.id));
            UItem uItemAsModel = ModelItem.Factory.asModel(tL_stars$starGiftAttributeModel, num == null ? 0 : num.intValue(), lowerCase);
            if (TextUtils.isEmpty(lowerCase)) {
                z = z2;
            } else if (zIsEmpty || !z2) {
                z = false;
            }
            arrayList2.add(uItemAsModel.setChecked(z));
        }
        if (arrayList2.isEmpty()) {
            arrayList2.add(EmptyView.Factory.asEmptyView(LocaleController.getString(R.string.Gift2ResaleFiltersModelEmpty)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$25(final TL_stars$TL_starGiftUnique tL_stars$TL_starGiftUnique, final Long l) {
        String str;
        Bulletin bulletinCreateSimpleBulletin;
        if (l.longValue() != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            Bundle bundle = new Bundle();
            long jLongValue = l.longValue();
            long jLongValue2 = l.longValue();
            if (jLongValue >= 0) {
                str = "user_id";
            } else {
                jLongValue2 = -jLongValue2;
                str = "chat_id";
            }
            bundle.putLong(str, jLongValue2);
            presentFragment(new ChatActivity(bundle) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.13
                private boolean shownToast = false;

                @Override // org.telegram.ui.ChatActivity, org.telegram.ui.ActionBar.BaseFragment
                public void onBecomeFullyVisible() {
                    super.onBecomeFullyVisible();
                    if (this.shownToast) {
                        return;
                    }
                    this.shownToast = true;
                    BulletinFactory.of(this).createSimpleBulletin(tL_stars$TL_starGiftUnique.getDocument(), LocaleController.getString(R.string.BoughtResoldGiftToTitle), LocaleController.formatString(R.string.BoughtResoldGiftToText, DialogObject.getShortName(this.currentAccount, l.longValue()))).hideAfterBottomSheet(false).show();
                    FireworksOverlay fireworksOverlay = this.fireworksOverlay;
                    if (fireworksOverlay != null) {
                        fireworksOverlay.start(true);
                    }
                }
            }, true);
            Runnable runnable = this.closeParentSheet;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        this.list.gifts.remove(tL_stars$TL_starGiftUnique);
        updateList(false);
        if (l.longValue() == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            bulletinCreateSimpleBulletin = BulletinFactory.of(this).createSimpleBulletin(tL_stars$TL_starGiftUnique.getDocument(), LocaleController.getString(R.string.BoughtResoldGiftTitle), LocaleController.formatString(R.string.BoughtResoldGiftText, tL_stars$TL_starGiftUnique.title + " #" + LocaleController.formatNumber(tL_stars$TL_starGiftUnique.num, ',')));
        } else {
            bulletinCreateSimpleBulletin = BulletinFactory.of(this).createSimpleBulletin(tL_stars$TL_starGiftUnique.getDocument(), LocaleController.getString(R.string.BoughtResoldGiftToTitle), LocaleController.formatString(R.string.BoughtResoldGiftToText, DialogObject.getShortName(this.currentAccount, l.longValue())));
        }
        bulletinCreateSimpleBulletin.hideAfterBottomSheet(false).show();
        this.fireworksOverlay.start(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemClick(UItem uItem, View view, int i, float f, float f2) {
        Object obj = uItem.object;
        if (obj instanceof TL_stars$TL_starGiftUnique) {
            TL_stars$TL_starGiftUnique tL_stars$TL_starGiftUnique = (TL_stars$TL_starGiftUnique) obj;
            StarGiftSheet starGiftSheet = new StarGiftSheet(getContext(), this.currentAccount, this.dialogId, this.resourceProvider);
            starGiftSheet.set(tL_stars$TL_starGiftUnique.slug, tL_stars$TL_starGiftUnique, this.list);
            starGiftSheet.setOnBoughtGift(new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda29
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj2, Object obj3) {
                    this.f$0.lambda$onItemClick$25((TL_stars$TL_starGiftUnique) obj2, (Long) obj3);
                }
            });
            showDialog(starGiftSheet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    private void setClearFiltersShown(boolean z, boolean z2) {
        if (this.clearFiltersShown == z) {
            return;
        }
        this.clearFiltersShown = z;
        float fDp = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.clearFiltersContainer.animate();
            if (!z) {
                fDp = AndroidUtilities.dp(49.0f);
            }
            viewPropertyAnimatorAnimate.translationY(fDp).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(420L).start();
            return;
        }
        FrameLayout frameLayout = this.clearFiltersContainer;
        if (!z) {
            fDp = AndroidUtilities.dp(49.0f);
        }
        frameLayout.setTranslationY(fDp);
    }

    private void setFiltersShown(final boolean z, boolean z2) {
        if (this.filtersShown == z) {
            return;
        }
        this.filtersShown = z;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (!z2) {
            this.filterScrollView.setVisibility(z ? 0 : 8);
            this.filterScrollView.setTranslationY(z ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.dp(45.0f));
            this.filterScrollView.setAlpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
            this.filtersDivider.setTranslationY(z ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.dp(45.0f));
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (!z) {
                f = -AndroidUtilities.dp(39.0f);
            }
            universalRecyclerView.setTranslationY(f);
            return;
        }
        this.filterScrollView.setVisibility(0);
        ViewPropertyAnimator viewPropertyAnimatorAlpha = this.filterScrollView.animate().translationY(z ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.dp(45.0f)).alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        viewPropertyAnimatorAlpha.setInterpolator(cubicBezierInterpolator).setDuration(420L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z) {
                    return;
                }
                ResaleGiftsFragment.this.filterScrollView.setVisibility(8);
            }
        }).start();
        this.filtersDivider.animate().translationY(z ? BitmapDescriptorFactory.HUE_RED : -AndroidUtilities.dp(45.0f)).setInterpolator(cubicBezierInterpolator).setDuration(420L).start();
        ViewPropertyAnimator viewPropertyAnimatorAnimate = this.listView.animate();
        if (!z) {
            f = -AndroidUtilities.dp(39.0f);
        }
        viewPropertyAnimatorAnimate.translationY(f).setInterpolator(cubicBezierInterpolator).setDuration(420L).start();
    }

    private void updateEmptyView(final boolean z) {
        if (this.emptyViewVisible == z) {
            return;
        }
        this.emptyViewVisible = z;
        this.emptyView.setVisibility(0);
        this.emptyView.animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).scaleX(z ? 1.0f : 0.95f).scaleY(z ? 1.0f : 0.95f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z) {
                    return;
                }
                ResaleGiftsFragment.this.emptyView.setVisibility(8);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList(boolean z) {
        UniversalAdapter universalAdapter;
        if (this.list.getTotalCount() > 12) {
            setFiltersShown(true, true);
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        boolean z2 = false;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
            if (z) {
                this.listView.scrollToPosition(0);
            }
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitle(this.gift_name);
            this.actionBar.setSubtitle(this.list.getTotalCount() <= 0 ? LocaleController.getString(R.string.Gift2ResaleNoCount) : LocaleController.formatPluralStringComma("Gift2ResaleCount", this.list.getTotalCount()));
        }
        Filter filter = this.sortButton;
        if (filter != null) {
            filter.setSorting(this.list.getSorting());
        }
        if (this.modelButton != null) {
            int size = this.list.modelAttributes.size() - this.list.notSelectedModelAttributes.size();
            this.modelButton.setValue((size <= 0 || size == this.list.modelAttributes.size()) ? LocaleController.getString(R.string.Gift2ResaleFilterModel) : LocaleController.formatPluralStringComma("Gift2ResaleFilterModels", size));
        }
        if (this.backdropButton != null) {
            int size2 = this.list.backdropAttributes.size() - this.list.notSelectedBackdropAttributes.size();
            this.backdropButton.setValue((size2 <= 0 || size2 == this.list.backdropAttributes.size()) ? LocaleController.getString(R.string.Gift2ResaleFilterBackdrop) : LocaleController.formatPluralStringComma("Gift2ResaleFilterBackdrops", size2));
        }
        if (this.patternButton != null) {
            int size3 = this.list.patternAttributes.size() - this.list.notSelectedPatternAttributes.size();
            this.patternButton.setValue((size3 <= 0 || size3 == this.list.patternAttributes.size()) ? LocaleController.getString(R.string.Gift2ResaleFilterSymbol) : LocaleController.formatPluralStringComma("Gift2ResaleFilterSymbols", size3));
        }
        if (isLoadingVisible()) {
            this.list.load();
        }
        if ((this.list.loading || this.list.getTotalCount() > 0) && (!this.list.notSelectedModelAttributes.isEmpty() || !this.list.notSelectedBackdropAttributes.isEmpty() || !this.list.notSelectedPatternAttributes.isEmpty())) {
            z2 = true;
        }
        setClearFiltersShown(z2, true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        ActionBar actionBar = this.actionBar;
        BackDrawable backDrawable = new BackDrawable(false);
        this.backDrawable = backDrawable;
        actionBar.setBackButtonDrawable(backDrawable);
        this.backDrawable.setAnimationTime(240.0f);
        this.actionBar.setCastShadows(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ResaleGiftsFragment.this.lambda$onBackPressed$354();
                }
            }
        });
        this.actionBar.setTitle(this.gift_name);
        ActionBar actionBar2 = this.actionBar;
        int i = Theme.key_windowBackgroundWhite;
        actionBar2.setBackgroundColor(getThemedColor(i));
        ActionBar actionBar3 = this.actionBar;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        actionBar3.setItemsColor(getThemedColor(i2), false);
        this.actionBar.setItemsColor(getThemedColor(i2), true);
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
        this.actionBar.setTitleColor(getThemedColor(i2));
        this.actionBar.setSubtitleColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.2
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                ((FrameLayout.LayoutParams) ResaleGiftsFragment.this.filterScrollView.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight() + (((BaseFragment) ResaleGiftsFragment.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
                ((FrameLayout.LayoutParams) ResaleGiftsFragment.this.filtersDivider.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight() + (((BaseFragment) ResaleGiftsFragment.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + AndroidUtilities.dp(47.0f);
                ((FrameLayout.LayoutParams) ResaleGiftsFragment.this.listView.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight() + (((BaseFragment) ResaleGiftsFragment.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
                ((FrameLayout.LayoutParams) ResaleGiftsFragment.this.emptyView.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight() + (((BaseFragment) ResaleGiftsFragment.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
                super.onMeasure(i3, i4);
            }
        };
        int iBlendOver = Theme.blendOver(Theme.getColor(i, this.resourceProvider), Theme.multAlpha(Theme.getColor(i2, this.resourceProvider), 0.04f));
        sizeNotifierFrameLayout.setBackgroundColor(iBlendOver);
        this.fragmentView = sizeNotifierFrameLayout;
        final StarsIntroActivity.StarsBalanceView starsBalanceView = new StarsIntroActivity.StarsBalanceView(context, this.currentAccount);
        ScaleStateListAnimator.apply(starsBalanceView);
        starsBalanceView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(starsBalanceView, view);
            }
        });
        this.actionBar.addView(starsBalanceView, LayoutHelper.createFrame(-2, -2.0f, 85, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 4.0f, BitmapDescriptorFactory.HUE_RED));
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onItemClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onItemLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        }) { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.3
            @Override // org.telegram.ui.Components.RecyclerListView
            public Integer getSelectorColor(int i3) {
                return 0;
            }
        };
        this.listView = universalRecyclerView;
        universalRecyclerView.adapter.setApplyBackground(false);
        this.listView.setSpanCount(3);
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                if (ResaleGiftsFragment.this.isLoadingVisible()) {
                    ResaleGiftsFragment.this.list.load();
                }
                ResaleGiftsFragment.this.filtersDivider.animate().alpha((ResaleGiftsFragment.this.filtersShown && ResaleGiftsFragment.this.listView.canScrollVertically(-1)) ? 1.0f : BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
            }
        });
        this.listView.setPadding(0, AndroidUtilities.dp(45.0f), 0, AndroidUtilities.dp(101.0f));
        this.listView.setClipToPadding(false);
        sizeNotifierFrameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, 7.33f, BitmapDescriptorFactory.HUE_RED, 7.33f, -45.0f));
        sizeNotifierFrameLayout.addView(this.actionBar);
        LargeEmptyView largeEmptyView = new LargeEmptyView(context, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$1(view);
            }
        }, this.resourceProvider);
        this.emptyView = largeEmptyView;
        this.emptyViewVisible = false;
        largeEmptyView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.emptyView.setScaleX(0.95f);
        this.emptyView.setScaleY(0.95f);
        this.emptyView.setVisibility(8);
        sizeNotifierFrameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f, R.styleable.AppCompatTheme_windowActionModeOverlay, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -45.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.filtersContainer = linearLayout;
        linearLayout.setPadding(AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(11.0f), 0);
        this.filtersContainer.setOrientation(0);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
        this.filterScrollView = horizontalScrollView;
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        this.filterScrollView.addView(this.filtersContainer);
        this.filterScrollView.setBackgroundColor(iBlendOver);
        sizeNotifierFrameLayout.addView(this.filterScrollView, LayoutHelper.createFrame(-1, 47, 55));
        View view = new View(context);
        this.filtersDivider = view;
        int i3 = Theme.key_divider;
        view.setBackgroundColor(getThemedColor(i3));
        this.filtersDivider.setAlpha(BitmapDescriptorFactory.HUE_RED);
        sizeNotifierFrameLayout.addView(this.filtersDivider, LayoutHelper.createFrame(-1.0f, 2.0f / AndroidUtilities.density, 55));
        FrameLayout frameLayout = new FrameLayout(context);
        this.clearFiltersContainer = frameLayout;
        sizeNotifierFrameLayout.addView(frameLayout, LayoutHelper.createFrame(-1, 49, 87));
        this.clearFiltersButton = new TextView(context);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x");
        spannableStringBuilder.setSpan(new ColoredImageSpan(R.drawable.msg_clearcache), 0, 1, 33);
        spannableStringBuilder.append((CharSequence) " ").append((CharSequence) LocaleController.getString(R.string.Gift2ResaleFiltersClear));
        this.clearFiltersButton.setText(spannableStringBuilder);
        TextView textView = this.clearFiltersButton;
        int i4 = Theme.key_featuredStickers_addButton;
        textView.setTextColor(getThemedColor(i4));
        this.clearFiltersButton.setTypeface(AndroidUtilities.bold());
        this.clearFiltersButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(0, getThemedColor(i), Theme.blendOver(getThemedColor(i), Theme.multAlpha(getThemedColor(i4), 0.1f))));
        this.clearFiltersButton.setGravity(17);
        this.clearFiltersButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$2(view2);
            }
        });
        this.clearFiltersContainer.addView(this.clearFiltersButton, LayoutHelper.createFrame(-1, -1, R.styleable.AppCompatTheme_windowActionModeOverlay));
        View view2 = new View(context);
        view2.setBackgroundColor(getThemedColor(i3));
        this.clearFiltersContainer.addView(view2, LayoutHelper.createFrame(-1.0f, 1.0f / AndroidUtilities.density, 55));
        setClearFiltersShown(false, false);
        Filter filter = new Filter(context, this.resourceProvider);
        this.sortButton = filter;
        filter.setSorting(this.list.getSorting());
        this.filtersContainer.addView(this.sortButton, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 6, 0));
        this.sortButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$createView$6(view3);
            }
        });
        Filter filter2 = new Filter(context, this.resourceProvider);
        this.modelButton = filter2;
        filter2.setValue(LocaleController.getString(R.string.Gift2AttributeModel));
        this.filtersContainer.addView(this.modelButton, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 6, 0));
        this.modelButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$createView$12(context, view3);
            }
        });
        Filter filter3 = new Filter(context, this.resourceProvider);
        this.backdropButton = filter3;
        filter3.setValue(LocaleController.getString(R.string.Gift2AttributeBackdrop));
        this.filtersContainer.addView(this.backdropButton, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 6, 0));
        this.backdropButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$createView$18(context, view3);
            }
        });
        Filter filter4 = new Filter(context, this.resourceProvider);
        this.patternButton = filter4;
        filter4.setValue(LocaleController.getString(R.string.Gift2AttributeSymbol));
        this.filtersContainer.addView(this.patternButton, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 0, 0));
        this.patternButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ResaleGiftsFragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$createView$24(context, view3);
            }
        });
        FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
        this.fireworksOverlay = fireworksOverlay;
        sizeNotifierFrameLayout.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
        setFiltersShown(false, false);
        return sizeNotifierFrameLayout;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        if (getLastStoryViewer() != null && getLastStoryViewer().isShown()) {
            return false;
        }
        int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        if (this.actionBar.isActionModeShowed()) {
            color = Theme.getColor(Theme.key_actionBarActionModeDefault);
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }

    public ResaleGiftsFragment setCloseParentSheet(Runnable runnable) {
        this.closeParentSheet = runnable;
        return this;
    }
}

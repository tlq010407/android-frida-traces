package org.telegram.ui.Gifts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import j$.util.Collection;
import j$.util.function.Predicate;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.R;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars$SavedStarGift;
import org.telegram.tgnet.tl.TL_stars$StarGift;
import org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributeBackdrop;
import org.telegram.tgnet.tl.TL_stars$starGiftAttributePattern;
import org.telegram.ui.AccountFrozenAlert;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity$$ExternalSyntheticLambda252;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CompatDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ExtendedGridLayoutManager;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$GiftTier;
import org.telegram.ui.Components.Premium.PremiumLockIconView;
import org.telegram.ui.Components.Premium.boosts.BoostRepository;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.Shaker;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.ExplainStarsSheet;
import org.telegram.ui.Stars.StarGiftPatterns;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stars.StarsReactionsSheet;
import org.telegram.ui.Stories.recorder.HintView2;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class GiftSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private int TAB_ALL;
    private int TAB_IN_STOCK;
    private int TAB_LIMITED;
    private int TAB_MY_GIFTS;
    private int TAB_RESALE;
    private UniversalAdapter adapter;
    private final StarsIntroActivity.StarsBalanceView balanceView;
    private boolean birthday;
    private final Runnable closeParentSheet;
    private final int currentAccount;
    private final long dialogId;
    private final DefaultItemAnimator itemAnimator;
    private final ExtendedGridLayoutManager layoutManager;
    private final StarsController.GiftsList myGifts;
    private final String name;
    private List options;
    private final FrameLayout premiumHeaderView;
    private final ArrayList premiumTiers;
    private int selectedTab;
    private final boolean self;
    private final LinearLayout starsHeaderView;
    private final ArrayList tabs;
    private final FrameLayout topView;
    private TLRPC.DisallowedGiftsSettings userSettings;

    public static class CardBackground extends Drawable {
        private AnimatedFloat animatedSelected;
        private TL_stars$starGiftAttributeBackdrop backdrop;
        private final Path clipPath;
        private RadialGradient gradient;
        private final Matrix gradientMatrix;
        private int gradientRadius;
        public final Paint paint;
        private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable pattern;
        private final RectF rect;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean selected;
        private final Paint selectedPaint;
        private final View view;

        public CardBackground(View view, Theme.ResourcesProvider resourcesProvider, boolean z) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.rect = new RectF();
            this.clipPath = new Path();
            this.gradientMatrix = new Matrix();
            Paint paint2 = new Paint(1);
            this.selectedPaint = paint2;
            this.animatedSelected = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$CardBackground$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.view = view;
            this.resourcesProvider = resourcesProvider;
            this.pattern = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(view, AndroidUtilities.dp(28.0f)) { // from class: org.telegram.ui.Gifts.GiftSheet.CardBackground.1
                @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable, org.telegram.ui.Components.AnimatedEmojiSpan.InvalidateHolder
                public void invalidate() {
                    super.invalidate();
                    if (CardBackground.this.getCallback() != null) {
                        CardBackground.this.getCallback().invalidateDrawable(CardBackground.this);
                    }
                }
            };
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Gifts.GiftSheet.CardBackground.2
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    CardBackground.this.pattern.attach();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    CardBackground.this.pattern.detach();
                }
            });
            if (view.isAttachedToWindow()) {
                this.pattern.attach();
            }
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
            if (z) {
                paint.setShadowLayer(AndroidUtilities.dp(1.66f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(0.33f), Theme.getColor(Theme.key_dialogCardShadow, resourcesProvider));
            }
            paint2.setStyle(Paint.Style.STROKE);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            draw(canvas, BitmapDescriptorFactory.HUE_RED);
        }

        public void draw(Canvas canvas, float f) {
            Paint paint;
            RadialGradient radialGradient;
            Rect bounds = getBounds();
            float f2 = this.animatedSelected.set(this.selected);
            this.rect.set(bounds);
            this.rect.inset(AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f));
            if (this.backdrop != null) {
                int iLerp = AndroidUtilities.lerp(Math.min(bounds.width(), bounds.height()), Math.max(bounds.width(), bounds.height()), 0.35f) / 2;
                if (this.gradient == null || this.gradientRadius != iLerp) {
                    this.gradientRadius = iLerp;
                    float f3 = iLerp;
                    TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop = this.backdrop;
                    int i = tL_stars$starGiftAttributeBackdrop.center_color | (-16777216);
                    this.gradient = new RadialGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f3, new int[]{i, i, tL_stars$starGiftAttributeBackdrop.edge_color | (-16777216)}, new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                }
                this.gradientMatrix.reset();
                this.gradientMatrix.postTranslate(bounds.centerX(), Math.min(AndroidUtilities.dp(50.0f), bounds.centerY()));
                this.gradient.setLocalMatrix(this.gradientMatrix);
                paint = this.paint;
                radialGradient = this.gradient;
            } else {
                paint = this.paint;
                radialGradient = null;
            }
            paint.setShader(radialGradient);
            canvas.drawRoundRect(this.rect, AndroidUtilities.dp(11.0f), AndroidUtilities.dp(11.0f), this.paint);
            if (this.backdrop != null && !this.pattern.isEmpty()) {
                this.pattern.setColor(Integer.valueOf((-16777216) | this.backdrop.pattern_color));
                canvas.save();
                this.clipPath.rewind();
                this.clipPath.addRoundRect(this.rect, AndroidUtilities.dp(11.0f), AndroidUtilities.dp(11.0f), Path.Direction.CW);
                canvas.clipPath(this.clipPath);
                canvas.translate(bounds.centerX(), bounds.centerY());
                float fLerp = AndroidUtilities.lerp(1.0f, 0.925f, f2);
                canvas.scale(fLerp, fLerp);
                if (f < 1.0f) {
                    StarGiftPatterns.drawPattern(canvas, 2, this.pattern, bounds.width(), bounds.height(), 1.0f - f, 1.0f);
                }
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(-31.0f));
                    StarGiftPatterns.drawPattern(canvas, 0, this.pattern, bounds.width(), bounds.height(), f, 1.0f);
                }
                canvas.restore();
            }
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                this.selectedPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                this.selectedPaint.setStrokeWidth(AndroidUtilities.dpf2(2.33f));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.rect);
                float fLerp2 = AndroidUtilities.lerp(-AndroidUtilities.dpf2(2.33f), AndroidUtilities.dp(5.166f), f2);
                rectF.inset(fLerp2, fLerp2);
                float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.dpf2(11.0f), AndroidUtilities.dpf2(6.66f), f2);
                canvas.drawRoundRect(rectF, fLerp3, fLerp3, this.selectedPaint);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            rect.set(AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f));
            return true;
        }

        public void invalidate() {
            this.view.invalidate();
            if (getCallback() != null) {
                getCallback().invalidateDrawable(this);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        public void setBackdrop(TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop) {
            if (this.backdrop != tL_stars$starGiftAttributeBackdrop) {
                this.gradient = null;
            }
            this.backdrop = tL_stars$starGiftAttributeBackdrop;
            invalidate();
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void setPattern(TL_stars$starGiftAttributePattern tL_stars$starGiftAttributePattern) {
            if (tL_stars$starGiftAttributePattern == null) {
                this.pattern.set((Drawable) null, false);
            } else {
                this.pattern.set(tL_stars$starGiftAttributePattern.document, false);
            }
        }

        public void setSelected(boolean z, boolean z2) {
            if (this.selected == z) {
                return;
            }
            this.selected = z;
            if (!z2) {
                this.animatedSelected.force(z);
            }
            invalidate();
        }
    }

    public static class GiftCell extends FrameLayout {
        public boolean allowResaleInGifts;
        private final AnimatedFloat animatedReordering;
        private final AvatarDrawable avatarDrawable;
        private final BackupImageView avatarView;
        private Runnable cancel;
        private final FrameLayout card;
        private final CardBackground cardBackground;
        private final Rect cardBackgroundPadding;
        private final int currentAccount;
        private TL_stars$StarGift gift;
        private boolean giftMine;
        public final BackupImageView imageView;
        private final FrameLayout.LayoutParams imageViewLayoutParams;
        public boolean inResalePage;
        private TLRPC.Document lastDocument;
        private long lastDocumentId;
        private GiftPremiumBottomSheet$GiftTier lastTier;
        private TL_stars$SavedStarGift lastUserGift;
        private final PremiumLockIconView lockView;
        private final PremiumLockIconView pinView;
        private boolean pinned;
        private boolean pinnedIcon;
        private final ImageView pinnedImageView;
        private final FrameLayout pinnedView;
        private GiftPremiumBottomSheet$GiftTier premiumTier;
        private final TextView priceView;
        private boolean reordering;
        private final Theme.ResourcesProvider resourcesProvider;
        private final Ribbon ribbon;
        private final Shaker shaker;
        private final TextView starsPriceView;
        private Text subtitle;
        private final TextView subtitleView;
        private Text title;
        private final TextView titleView;
        private TL_stars$SavedStarGift userGift;

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            public static UItem asPremiumGift(GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier) {
                UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
                spanCount.object = giftPremiumBottomSheet$GiftTier;
                return spanCount;
            }

            public static UItem asStarGift(int i, TL_stars$SavedStarGift tL_stars$SavedStarGift, boolean z) {
                UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
                spanCount.intValue = i;
                spanCount.object = tL_stars$SavedStarGift;
                spanCount.accent = z;
                return spanCount;
            }

            public static UItem asStarGift(int i, TL_stars$StarGift tL_stars$StarGift, boolean z, boolean z2, boolean z3, boolean z4) {
                UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
                spanCount.intValue = i;
                spanCount.object = tL_stars$StarGift;
                spanCount.checked = z;
                spanCount.object2 = Boolean.valueOf(z2);
                spanCount.red = z4;
                spanCount.accent = z3;
                return spanCount;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void attachedView(View view, UItem uItem) {
                ((GiftCell) view).setReordering(uItem.reordering, false);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                Object obj = uItem.object;
                if (obj instanceof GiftPremiumBottomSheet$GiftTier) {
                    ((GiftCell) view).setPremiumGift((GiftPremiumBottomSheet$GiftTier) obj);
                } else if (obj instanceof TL_stars$StarGift) {
                    TL_stars$StarGift tL_stars$StarGift = (TL_stars$StarGift) obj;
                    GiftCell giftCell = (GiftCell) view;
                    boolean z2 = uItem.checked;
                    Object obj2 = uItem.object2;
                    giftCell.setStarsGift(tL_stars$StarGift, z2, obj2 instanceof Boolean ? ((Boolean) obj2).booleanValue() : false, uItem.accent, uItem.red);
                } else if (obj instanceof TL_stars$SavedStarGift) {
                    ((GiftCell) view).setStarsGift((TL_stars$SavedStarGift) obj, uItem.accent);
                }
                ((GiftCell) view).setReordering(uItem.reordering, false);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public GiftCell createView(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new GiftCell(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                if (uItem.accent != uItem2.accent) {
                    return false;
                }
                Object obj = uItem.object;
                if (obj != null || uItem2.object != null) {
                    if (obj instanceof GiftPremiumBottomSheet$GiftTier) {
                        return obj == uItem2.object;
                    }
                    if (obj instanceof TL_stars$StarGift) {
                        Object obj2 = uItem2.object;
                        if (obj2 instanceof TL_stars$StarGift) {
                            return ((TL_stars$StarGift) obj).id == ((TL_stars$StarGift) obj2).id;
                        }
                    }
                    if (obj instanceof TL_stars$SavedStarGift) {
                        Object obj3 = uItem2.object;
                        if (obj3 instanceof TL_stars$SavedStarGift) {
                            return ((TL_stars$SavedStarGift) obj).gift.id == ((TL_stars$SavedStarGift) obj3).gift.id;
                        }
                    }
                }
                return uItem.intValue == uItem2.intValue && uItem.checked == uItem2.checked && uItem.longValue == uItem2.longValue && TextUtils.equals(uItem.text, uItem2.text);
            }
        }

        public GiftCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.cardBackgroundPadding = new Rect();
            this.animatedReordering = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            ScaleStateListAnimator.apply(this, 0.04f, 1.5f);
            this.shaker = new Shaker(this);
            FrameLayout frameLayout = new FrameLayout(context);
            this.card = frameLayout;
            CardBackground cardBackground = new CardBackground(frameLayout, resourcesProvider, true);
            this.cardBackground = cardBackground;
            frameLayout.setBackground(cardBackground);
            addView(frameLayout, LayoutHelper.createFrame(-1, -1, R.styleable.AppCompatTheme_windowActionModeOverlay));
            Ribbon ribbon = new Ribbon(context);
            this.ribbon = ribbon;
            addView(ribbon, LayoutHelper.createFrame(-2, -2.0f, 53, BitmapDescriptorFactory.HUE_RED, 2.0f, 1.0f, BitmapDescriptorFactory.HUE_RED));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.getImageReceiver().setAutoRepeat(0);
            FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(80, 80.0f, 17, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED, 12.0f);
            this.imageViewLayoutParams = layoutParamsCreateFrame;
            frameLayout.addView(backupImageView, layoutParamsCreateFrame);
            PremiumLockIconView premiumLockIconView = new PremiumLockIconView(context, PremiumLockIconView.TYPE_GIFT_LOCK, resourcesProvider);
            this.lockView = premiumLockIconView;
            premiumLockIconView.setImageReceiver(backupImageView.getImageReceiver());
            frameLayout.addView(premiumLockIconView, LayoutHelper.createFrame(30, 30.0f, 49, BitmapDescriptorFactory.HUE_RED, 38.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            PremiumLockIconView premiumLockIconView2 = new PremiumLockIconView(context, PremiumLockIconView.TYPE_GIFT_PIN, resourcesProvider);
            this.pinView = premiumLockIconView2;
            premiumLockIconView2.setImageReceiver(backupImageView.getImageReceiver());
            frameLayout.addView(premiumLockIconView2, LayoutHelper.createFrame(44, 44, 17));
            premiumLockIconView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            premiumLockIconView2.setScaleX(0.3f);
            premiumLockIconView2.setScaleY(0.3f);
            premiumLockIconView2.setVisibility(8);
            TextView textView = new TextView(context);
            this.titleView = textView;
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView.setGravity(17);
            textView.setTextSize(1, 14.0f);
            textView.setTypeface(AndroidUtilities.bold());
            frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 48, BitmapDescriptorFactory.HUE_RED, 89.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView2.setGravity(17);
            textView2.setTextSize(1, 12.0f);
            frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 48, BitmapDescriptorFactory.HUE_RED, 107.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            TextView textView3 = new TextView(context);
            this.priceView = textView3;
            textView3.setTextSize(1, 12.0f);
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            textView3.setGravity(17);
            textView3.setBackground(new StarsBackground(Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
            textView3.setTextColor(-13397548);
            frameLayout.addView(textView3, LayoutHelper.createFrame(-2, 26.0f, 49, BitmapDescriptorFactory.HUE_RED, 130.0f, BitmapDescriptorFactory.HUE_RED, 11.0f));
            TextView textView4 = new TextView(context);
            this.starsPriceView = textView4;
            textView4.setTextSize(1, 10.66f);
            textView4.setGravity(17);
            textView4.setTextColor(Theme.isCurrentThemeDark() ? -1333971 : -2722014);
            textView4.setVisibility(8);
            frameLayout.addView(textView4, LayoutHelper.createFrame(-2, -2.0f, 49, BitmapDescriptorFactory.HUE_RED, 161.0f, BitmapDescriptorFactory.HUE_RED, 8.0f));
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView2 = new BackupImageView(context);
            this.avatarView = backupImageView2;
            backupImageView2.setRoundRadius(AndroidUtilities.dp(20.0f));
            backupImageView2.setVisibility(8);
            frameLayout.addView(backupImageView2, LayoutHelper.createFrame(20, 20.0f, 51, 2.0f, 2.0f, 2.0f, 2.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.pinnedView = frameLayout2;
            frameLayout2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            frameLayout2.setScaleX(0.3f);
            frameLayout2.setScaleY(0.3f);
            frameLayout2.setVisibility(8);
            ImageView imageView = new ImageView(context);
            this.pinnedImageView = imageView;
            imageView.setImageResource(R.drawable.msg_limit_pin);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            frameLayout2.addView(imageView, LayoutHelper.createFrame(12.66f, 12.66f, 17));
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(20, 20.0f, 51, 2.0f, 2.0f, 2.0f, 2.0f));
        }

        private TL_stars$TL_starGiftUnique getUniqueStarGift() {
            TL_stars$SavedStarGift tL_stars$SavedStarGift = this.userGift;
            if (tL_stars$SavedStarGift == null) {
                return null;
            }
            TL_stars$StarGift tL_stars$StarGift = tL_stars$SavedStarGift.gift;
            if (tL_stars$StarGift instanceof TL_stars$TL_starGiftUnique) {
                return (TL_stars$TL_starGiftUnique) tL_stars$StarGift;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPinned$0(boolean z) {
            if (z) {
                return;
            }
            this.pinnedView.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setShowPinIcon$1(boolean z) {
            if (z) {
                return;
            }
            this.pinView.setVisibility(8);
        }

        private void setSticker(TLRPC.Document document, Object obj) {
            if (document == null) {
                this.imageView.clearImage();
                this.lastDocument = null;
                this.lastDocumentId = 0L;
            } else {
                if (this.lastDocument == document) {
                    return;
                }
                this.lastDocument = document;
                this.lastDocumentId = document.id;
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, AndroidUtilities.dp(100.0f));
                this.imageView.setImage(ImageLocation.getForDocument(document), "100_100", ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "100_100", DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 0.3f), obj);
            }
        }

        private void updateRibbonText() {
            Ribbon ribbon;
            int i;
            String string;
            Ribbon ribbon2;
            int i2;
            StringBuilder sb;
            TL_stars$StarGift tL_stars$StarGift;
            TL_stars$SavedStarGift tL_stars$SavedStarGift = this.userGift;
            if (tL_stars$SavedStarGift != null) {
                TL_stars$StarGift tL_stars$StarGift2 = tL_stars$SavedStarGift.gift;
                if (tL_stars$StarGift2 instanceof TL_stars$TL_starGiftUnique) {
                    this.ribbon.setVisibility(0);
                    if (this.userGift.gift.resell_stars > 0) {
                        int iBlendOver = Theme.blendOver(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), 0.04f));
                        this.ribbon.setColor(Theme.getColor(Theme.key_color_green, this.resourcesProvider));
                        this.ribbon.setStrokeColor(iBlendOver);
                        this.ribbon.setBackdrop(null);
                        ribbon2 = this.ribbon;
                        i2 = R.string.Gift2OnSale;
                        ribbon2.setText(LocaleController.getString(i2), false);
                        return;
                    }
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop((TL_stars$starGiftAttributeBackdrop) StarsController.findAttribute(this.userGift.gift.attributes, TL_stars$starGiftAttributeBackdrop.class));
                    if (this.pinned) {
                        ribbon = this.ribbon;
                        sb = new StringBuilder();
                        sb.append("#");
                        tL_stars$StarGift = this.userGift.gift;
                        sb.append(LocaleController.formatNumber(tL_stars$StarGift.num, ','));
                        string = sb.toString();
                    } else {
                        ribbon = this.ribbon;
                        string = LocaleController.formatString(R.string.Gift2Limited1OfRibbon, AndroidUtilities.formatWholeNumber(this.userGift.gift.availability_issued, 0));
                    }
                } else {
                    if (!tL_stars$StarGift2.limited) {
                        this.ribbon.setBackdrop(null);
                        this.ribbon.setVisibility(8);
                        return;
                    }
                    this.ribbon.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop(null);
                    ribbon = this.ribbon;
                    string = LocaleController.formatString(R.string.Gift2Limited1OfRibbon, AndroidUtilities.formatWholeNumber(this.userGift.gift.availability_total, 0));
                }
            } else {
                TL_stars$StarGift tL_stars$StarGift3 = this.gift;
                if (tL_stars$StarGift3 == null) {
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier = this.premiumTier;
                    if (giftPremiumBottomSheet$GiftTier != null) {
                        if (giftPremiumBottomSheet$GiftTier.getDiscount() <= 0) {
                            this.ribbon.setVisibility(8);
                            this.ribbon.setBackdrop(null);
                            this.ribbon.setStrokeColor(0);
                            return;
                        } else {
                            this.ribbon.setVisibility(0);
                            this.ribbon.setBackdrop(null);
                            this.ribbon.setColors(-2535425, -8229377);
                            this.ribbon.setStrokeColor(0);
                            this.ribbon.setText(12, LocaleController.formatString(R.string.GiftPremiumOptionDiscount, Integer.valueOf(this.premiumTier.getDiscount())), true);
                            return;
                        }
                    }
                    return;
                }
                if (this.inResalePage) {
                    this.ribbon.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setBackdrop((TL_stars$starGiftAttributeBackdrop) StarsController.findAttribute(this.gift.attributes, TL_stars$starGiftAttributeBackdrop.class));
                    this.ribbon.setStrokeColor(0);
                    ribbon = this.ribbon;
                    sb = new StringBuilder();
                    sb.append("#");
                    tL_stars$StarGift = this.gift;
                    sb.append(LocaleController.formatNumber(tL_stars$StarGift.num, ','));
                    string = sb.toString();
                } else {
                    if (this.allowResaleInGifts && tL_stars$StarGift3.availability_resale > 0) {
                        this.ribbon.setVisibility(0);
                        this.ribbon.setColor(Theme.getColor(Theme.key_color_green, this.resourcesProvider));
                        this.ribbon.setStrokeColor(0);
                        this.ribbon.setBackdrop(null);
                        ribbon2 = this.ribbon;
                        i2 = R.string.Gift2Resale;
                        ribbon2.setText(LocaleController.getString(i2), false);
                        return;
                    }
                    if (this.giftMine) {
                        this.ribbon.setVisibility(0);
                        this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                        this.ribbon.setStrokeColor(0);
                        this.ribbon.setBackdrop((TL_stars$starGiftAttributeBackdrop) StarsController.findAttribute(this.gift.attributes, TL_stars$starGiftAttributeBackdrop.class));
                        ribbon = this.ribbon;
                        string = LocaleController.formatString(R.string.Gift2Limited1OfRibbon, AndroidUtilities.formatWholeNumber(this.gift.availability_issued, 0));
                    } else {
                        boolean z = tL_stars$StarGift3.limited;
                        if (!z || tL_stars$StarGift3.availability_remains > 0) {
                            Ribbon ribbon3 = this.ribbon;
                            if (!z) {
                                ribbon3.setBackdrop(null);
                                this.ribbon.setStrokeColor(0);
                                this.ribbon.setVisibility(8);
                                return;
                            } else {
                                ribbon3.setVisibility(0);
                                this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                                this.ribbon.setStrokeColor(0);
                                this.ribbon.setBackdrop(null);
                                ribbon = this.ribbon;
                                i = R.string.Gift2LimitedRibbon;
                            }
                        } else {
                            this.ribbon.setVisibility(0);
                            this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon_soldout, this.resourcesProvider));
                            this.ribbon.setStrokeColor(0);
                            this.ribbon.setBackdrop(null);
                            ribbon = this.ribbon;
                            i = R.string.Gift2SoldOut;
                        }
                        string = LocaleController.getString(i);
                    }
                }
            }
            ribbon.setText(string, true);
        }

        public void customDraw(View view, Canvas canvas, float f, float f2, float f3) {
            float f4;
            float f5;
            canvas.save();
            float f6 = f / 2.0f;
            canvas.scale(getScaleX(), getScaleY(), f6, f2 / 2.0f);
            TL_stars$TL_starGiftUnique uniqueStarGift = getUniqueStarGift();
            float fDp = uniqueStarGift != null ? AndroidUtilities.dp(63.0f) * f3 : BitmapDescriptorFactory.HUE_RED;
            this.cardBackground.setBounds(0, 0, (int) f, (int) f2);
            this.cardBackground.draw(canvas, f3);
            this.cardBackground.getPadding(this.cardBackgroundPadding);
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(80.0f), AndroidUtilities.dp(120.0f), f3);
            float f7 = f2 - fDp;
            this.imageView.getImageReceiver().setImageCoords((f - fLerp) / 2.0f, (f7 - fLerp) / 2.0f, fLerp, fLerp);
            this.imageView.getImageReceiver().draw(canvas);
            if (this.imageView.getImageReceiver().isLottieRunning()) {
                view.invalidate();
            }
            if (this.lockView.getVisibility() != 0 || this.lockView.getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                f4 = 1.0f;
            } else {
                canvas.save();
                canvas.translate((f - this.lockView.getMeasuredWidth()) / 2.0f, AndroidUtilities.lerp(this.lockView.getY(), (f7 - this.lockView.getMeasuredHeight()) / 2.0f, f3));
                f4 = 1.0f;
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.lockView.getWidth(), this.lockView.getHeight(), (int) ((1.0f - f3) * 255.0f * this.lockView.getAlpha()), 31);
                this.lockView.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
            if (this.pinnedView.getVisibility() == 0 && this.pinnedView.getAlpha() > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(this.cardBackgroundPadding.left + AndroidUtilities.dp(2.0f), this.cardBackgroundPadding.top + AndroidUtilities.dp(2.0f));
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.pinnedView.getWidth(), this.pinnedView.getHeight(), (int) (this.pinnedView.getAlpha() * 255.0f), 31);
                this.pinnedView.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
            if (this.avatarView.getVisibility() == 0 && this.avatarView.getAlpha() > BitmapDescriptorFactory.HUE_RED) {
                canvas.save();
                canvas.translate(this.cardBackgroundPadding.left + AndroidUtilities.dp(2.0f), this.cardBackgroundPadding.top + AndroidUtilities.dp(2.0f));
                this.avatarView.draw(canvas);
                canvas.restore();
            }
            if (this.ribbon.getVisibility() != 0 || this.ribbon.getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                f5 = 1.0f;
            } else {
                canvas.save();
                canvas.translate(f - AndroidUtilities.dp(f4), AndroidUtilities.dp(2.0f));
                f5 = 1.0f;
                float fLerp2 = AndroidUtilities.lerp(1.0f, 1.25f, f3);
                canvas.scale(fLerp2, fLerp2);
                canvas.translate(-this.ribbon.getWidth(), BitmapDescriptorFactory.HUE_RED);
                this.ribbon.draw(canvas);
                canvas.restore();
            }
            if (uniqueStarGift != null) {
                if (this.title == null) {
                    this.title = new Text(uniqueStarGift.title, 20.0f, AndroidUtilities.bold());
                }
                if (this.subtitle == null) {
                    this.subtitle = new Text(LocaleController.formatPluralStringComma("Gift2CollectionNumber", uniqueStarGift.num), 13.0f);
                }
                float f8 = f5 - f3;
                this.title.ellipsize(f - AndroidUtilities.dp(8.0f)).draw(canvas, (f - this.title.getWidth()) / 2.0f, (AndroidUtilities.dp(50.0f) * f8) + ((f2 - AndroidUtilities.dp(40.0f)) - (this.title.getHeight() / 2.0f)), -1, f3);
                this.subtitle.ellipsize(f - AndroidUtilities.dp(8.0f)).draw(canvas, (f - this.subtitle.getWidth()) / 2.0f, (AndroidUtilities.dp(50.0f) * f8) + ((f2 - AndroidUtilities.dp(19.0f)) - (this.subtitle.getHeight() / 2.0f)), -1, f3 * 0.6f);
            }
            TextView textView = this.priceView;
            if (textView != null && textView.getVisibility() == 0) {
                canvas.save();
                canvas.translate(f6 - (this.priceView.getWidth() / 2.0f), this.priceView.getY());
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.priceView.getWidth(), this.priceView.getHeight(), (int) (this.priceView.getAlpha() * 255.0f * (f5 - f3)), 31);
                this.priceView.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
            canvas.restore();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            canvas.save();
            canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
            float alpha = this.animatedReordering.set(this.reordering) * this.pinnedView.getAlpha();
            if (alpha > BitmapDescriptorFactory.HUE_RED) {
                this.shaker.concat(canvas, alpha);
            }
            canvas.translate((-getWidth()) / 2.0f, (-getHeight()) / 2.0f);
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        public TL_stars$StarGift getGift() {
            return this.gift;
        }

        public GiftPremiumBottomSheet$GiftTier getPremiumTier() {
            return this.premiumTier;
        }

        public TL_stars$SavedStarGift getSavedGift() {
            return this.userGift;
        }

        public void invalidateCustom() {
            this.card.invalidate();
            this.card.invalidateDrawable(this.cardBackground);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
        }

        public void setPinned(final boolean z, boolean z2) {
            TL_stars$SavedStarGift tL_stars$SavedStarGift;
            if (this.pinned == z) {
                return;
            }
            this.pinned = z;
            float f = BitmapDescriptorFactory.HUE_RED;
            boolean z3 = false;
            FrameLayout frameLayout = this.pinnedView;
            if (z2) {
                frameLayout.setVisibility(0);
                ViewPropertyAnimator viewPropertyAnimatorAnimate = this.pinnedView.animate();
                if (z) {
                    f = 1.0f;
                }
                viewPropertyAnimatorAnimate.alpha(f).scaleX(z ? 1.0f : 0.3f).scaleY(z ? 1.0f : 0.3f).withEndAction(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$GiftCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setPinned$0(z);
                    }
                }).start();
            } else {
                frameLayout.setVisibility(z ? 0 : 8);
                FrameLayout frameLayout2 = this.pinnedView;
                if (z) {
                    f = 1.0f;
                }
                frameLayout2.setAlpha(f);
                this.pinnedView.setScaleX(z ? 1.0f : 0.3f);
                this.pinnedView.setScaleY(z ? 1.0f : 0.3f);
            }
            if (!this.pinned && this.reordering && (tL_stars$SavedStarGift = this.userGift) != null && (tL_stars$SavedStarGift.gift instanceof TL_stars$TL_starGiftUnique)) {
                z3 = true;
            }
            setShowPinIcon(z3, z2);
            updateRibbonText();
        }

        public void setPremiumGift(GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier) {
            int months = giftPremiumBottomSheet$GiftTier.getMonths();
            if (this.lastTier != giftPremiumBottomSheet$GiftTier) {
                BackupImageView backupImageView = this.imageView;
                Runnable premiumGiftImage = StarsIntroActivity.setPremiumGiftImage(backupImageView, backupImageView.getImageReceiver(), months);
                this.cancel = premiumGiftImage;
                if (premiumGiftImage != null) {
                    premiumGiftImage.run();
                    this.cancel = null;
                }
            }
            this.cardBackground.setBackdrop(null);
            this.cardBackground.setPattern(null);
            this.titleView.setText(LocaleController.formatPluralString("Gift2Months", months, new Object[0]));
            this.subtitleView.setText(LocaleController.getString(R.string.TelegramPremiumShort));
            this.titleView.setVisibility(0);
            this.subtitleView.setVisibility(0);
            this.imageView.setTranslationY(-AndroidUtilities.dp(8.0f));
            this.avatarView.setVisibility(8);
            this.lockView.setVisibility(8);
            if (giftPremiumBottomSheet$GiftTier.isStarsPaymentAvailable()) {
                this.starsPriceView.setTextColor(Theme.isCurrentThemeDark() ? -1333971 : -2722014);
                this.starsPriceView.setVisibility(0);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("" + LocaleController.formatNumber(giftPremiumBottomSheet$GiftTier.getStarsPrice(), ','));
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilder.length(), 33);
                ColoredImageSpan[] coloredImageSpanArr = new ColoredImageSpan[1];
                this.starsPriceView.setText(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatSpannable(R.string.PremiumOrStarsPrice, spannableStringBuilder), 0.48f, coloredImageSpanArr));
                coloredImageSpanArr[0].spaceScaleX = 0.8f;
            } else {
                this.starsPriceView.setVisibility(8);
            }
            FrameLayout.LayoutParams layoutParams = this.imageViewLayoutParams;
            layoutParams.gravity = 49;
            this.imageView.setLayoutParams(layoutParams);
            this.priceView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            this.priceView.setTextSize(1, 12.0f);
            this.priceView.setText(giftPremiumBottomSheet$GiftTier.getFormattedPrice());
            this.priceView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(13.0f), 422810068));
            this.priceView.setTextColor(-13397548);
            ((ViewGroup.MarginLayoutParams) this.priceView.getLayoutParams()).topMargin = AndroidUtilities.dp(130.0f);
            ((FrameLayout.LayoutParams) this.priceView.getLayoutParams()).gravity = 49;
            this.lastTier = giftPremiumBottomSheet$GiftTier;
            this.lastDocument = null;
            this.premiumTier = giftPremiumBottomSheet$GiftTier;
            this.gift = null;
            this.giftMine = false;
            this.userGift = null;
            this.allowResaleInGifts = false;
            this.inResalePage = false;
            this.title = null;
            this.subtitle = null;
            setPinned(false, false);
            updateRibbonText();
        }

        public void setReordering(boolean z, boolean z2) {
            TL_stars$SavedStarGift tL_stars$SavedStarGift;
            if (this.reordering == z) {
                return;
            }
            this.reordering = z;
            if (!z2) {
                this.animatedReordering.force(z);
            }
            invalidate();
            setShowPinIcon(!this.pinned && z && (tL_stars$SavedStarGift = this.userGift) != null && (tL_stars$SavedStarGift.gift instanceof TL_stars$TL_starGiftUnique), z2);
        }

        public void setShowPinIcon(final boolean z, boolean z2) {
            if (this.pinnedIcon == z) {
                return;
            }
            this.pinnedIcon = z;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z2) {
                this.pinView.setVisibility(0);
                ViewPropertyAnimator viewPropertyAnimatorAnimate = this.pinView.animate();
                if (z) {
                    f = 1.0f;
                }
                viewPropertyAnimatorAnimate.alpha(f).scaleX(z ? 1.0f : 0.3f).scaleY(z ? 1.0f : 0.3f).withEndAction(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$GiftCell$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setShowPinIcon$1(z);
                    }
                }).start();
                return;
            }
            this.pinView.setVisibility(z ? 0 : 8);
            PremiumLockIconView premiumLockIconView = this.pinView;
            if (z) {
                f = 1.0f;
            }
            premiumLockIconView.setAlpha(f);
            this.pinView.setScaleX(z ? 1.0f : 0.3f);
            this.pinView.setScaleY(z ? 1.0f : 0.3f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void setStarsGift(TL_stars$SavedStarGift tL_stars$SavedStarGift, boolean z) {
            TextView textView;
            CharSequence charSequenceReplaceStarsWithPlain;
            ViewGroup.MarginLayoutParams marginLayoutParams;
            float f;
            TLRPC.Chat chat;
            Runnable runnable = this.cancel;
            if (runnable != null) {
                runnable.run();
                this.cancel = null;
            }
            setSticker(tL_stars$SavedStarGift.gift.getDocument(), tL_stars$SavedStarGift);
            TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop = (TL_stars$starGiftAttributeBackdrop) StarsController.findAttribute(tL_stars$SavedStarGift.gift.attributes, TL_stars$starGiftAttributeBackdrop.class);
            this.cardBackground.setBackdrop(tL_stars$starGiftAttributeBackdrop);
            this.cardBackground.setPattern((TL_stars$starGiftAttributePattern) StarsController.findAttribute(tL_stars$SavedStarGift.gift.attributes, TL_stars$starGiftAttributePattern.class));
            this.titleView.setVisibility(8);
            this.subtitleView.setVisibility(8);
            this.imageView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.lockView.setWaitingImage();
            this.lockView.setBlendWithColor(tL_stars$starGiftAttributeBackdrop != null ? Integer.valueOf(Theme.multAlpha(tL_stars$starGiftAttributeBackdrop.center_color | (-16777216), 0.75f)) : null);
            this.pinView.setWaitingImage();
            this.pinView.setBlendWithColor(tL_stars$starGiftAttributeBackdrop != null ? Integer.valueOf(Theme.multAlpha(tL_stars$starGiftAttributeBackdrop.center_color | (-16777216), 0.75f)) : null);
            this.pinnedView.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(20.0f), tL_stars$starGiftAttributeBackdrop != null ? Theme.adaptHSV(tL_stars$starGiftAttributeBackdrop.center_color | (-16777216), 0.1f, -0.2f) : Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
            FrameLayout.LayoutParams layoutParams = this.imageViewLayoutParams;
            layoutParams.gravity = 17;
            this.imageView.setLayoutParams(layoutParams);
            this.lockView.setVisibility(0);
            if (this.lastUserGift == tL_stars$SavedStarGift) {
                this.lockView.animate().alpha(tL_stars$SavedStarGift.unsaved ? 1.0f : BitmapDescriptorFactory.HUE_RED).scaleX(tL_stars$SavedStarGift.unsaved ? 1.0f : 0.4f).scaleY(tL_stars$SavedStarGift.unsaved ? 1.0f : 0.4f).setDuration(350L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            } else {
                this.lockView.setAlpha(tL_stars$SavedStarGift.unsaved ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                this.lockView.setScaleX(tL_stars$SavedStarGift.unsaved ? 1.0f : 0.4f);
                this.lockView.setScaleY(tL_stars$SavedStarGift.unsaved ? 1.0f : 0.4f);
            }
            boolean z2 = tL_stars$SavedStarGift.gift instanceof TL_stars$TL_starGiftUnique;
            if (z2) {
                this.avatarView.setVisibility(8);
            } else if (tL_stars$SavedStarGift.name_hidden) {
                this.avatarView.setVisibility(0);
                CombinedDrawable platformDrawable = StarsIntroActivity.StarsTransactionView.getPlatformDrawable("anonymous");
                platformDrawable.setIconSize(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
                this.avatarView.setImageDrawable(platformDrawable);
            } else {
                long peerDialogId = DialogObject.getPeerDialogId(tL_stars$SavedStarGift.from_id);
                if (peerDialogId > 0) {
                    TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                    if (user != 0) {
                        this.avatarView.setVisibility(0);
                        this.avatarDrawable.setInfo(user);
                        chat = user;
                        this.avatarView.setForUserOrChat(chat, this.avatarDrawable);
                    }
                    this.avatarView.setVisibility(8);
                } else {
                    TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
                    if (chat2 != null) {
                        this.avatarView.setVisibility(0);
                        this.avatarDrawable.setInfo(chat2);
                        chat = chat2;
                        this.avatarView.setForUserOrChat(chat, this.avatarDrawable);
                    }
                    this.avatarView.setVisibility(8);
                }
            }
            if (tL_stars$starGiftAttributeBackdrop == null || tL_stars$SavedStarGift.gift.resell_stars <= 0) {
                TextView textView2 = this.priceView;
                if (z) {
                    textView2.setVisibility(8);
                    this.imageViewLayoutParams.topMargin = AndroidUtilities.dp(12.0f);
                    this.imageViewLayoutParams.bottomMargin = AndroidUtilities.dp(12.0f);
                } else {
                    textView2.setVisibility(0);
                    FrameLayout.LayoutParams layoutParams2 = this.imageViewLayoutParams;
                    layoutParams2.topMargin = 0;
                    layoutParams2.bottomMargin = 0;
                }
                TextView textView3 = this.priceView;
                int iDp = AndroidUtilities.dp(8.0f);
                if (z2) {
                    textView3.setPadding(iDp, 0, AndroidUtilities.dp(8.0f), 0);
                    this.priceView.setTextSize(1, 12.0f);
                    textView = this.priceView;
                    charSequenceReplaceStarsWithPlain = LocaleController.getString(R.string.Gift2PriceUnique);
                } else {
                    textView3.setPadding(iDp, 0, AndroidUtilities.dp(10.0f), 0);
                    this.priceView.setTextSize(1, 12.0f);
                    textView = this.priceView;
                    StringBuilder sb = new StringBuilder();
                    sb.append("XTR ");
                    TL_stars$StarGift tL_stars$StarGift = tL_stars$SavedStarGift.gift;
                    long j = tL_stars$StarGift.stars;
                    long j2 = tL_stars$SavedStarGift.convert_stars;
                    if (j2 <= 0) {
                        j2 = tL_stars$StarGift.convert_stars;
                    }
                    sb.append(LocaleController.formatNumber(Math.max(j, j2), ','));
                    charSequenceReplaceStarsWithPlain = StarsIntroActivity.replaceStarsWithPlain(sb.toString(), 0.66f);
                }
                textView.setText(charSequenceReplaceStarsWithPlain);
                this.priceView.setTextColor(z2 ? -1 : Theme.isCurrentThemeDark() ? -1333971 : -4229632);
                this.priceView.setBackground(new StarsBackground(z2 ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                ((FrameLayout.LayoutParams) this.priceView.getLayoutParams()).gravity = 49;
                marginLayoutParams = (ViewGroup.MarginLayoutParams) this.priceView.getLayoutParams();
                f = 103.0f;
            } else {
                this.priceView.setVisibility(0);
                FrameLayout.LayoutParams layoutParams3 = this.imageViewLayoutParams;
                layoutParams3.topMargin = 0;
                layoutParams3.bottomMargin = 0;
                this.priceView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f), 0);
                this.priceView.setTextSize(1, 12.0f);
                ColoredImageSpan[] coloredImageSpanArr = new ColoredImageSpan[1];
                this.priceView.setText(StarsIntroActivity.replaceStars("XTR " + LocaleController.formatNumber(tL_stars$SavedStarGift.gift.resell_stars, ','), 0.95f, coloredImageSpanArr));
                ColoredImageSpan coloredImageSpan = coloredImageSpanArr[0];
                if (coloredImageSpan != null) {
                    coloredImageSpan.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(0.5f));
                }
                this.priceView.setBackground(new StarsBackground(1895825407, Theme.blendOver(tL_stars$starGiftAttributeBackdrop.center_color | (-16777216), Theme.multAlpha(tL_stars$starGiftAttributeBackdrop.pattern_color | (-16777216), 0.55f))));
                this.priceView.setTextColor(-1);
                ((FrameLayout.LayoutParams) this.priceView.getLayoutParams()).gravity = 49;
                marginLayoutParams = (ViewGroup.MarginLayoutParams) this.priceView.getLayoutParams();
                f = 69.0f;
            }
            marginLayoutParams.topMargin = AndroidUtilities.dp(f);
            this.starsPriceView.setVisibility(8);
            this.lastUserGift = tL_stars$SavedStarGift;
            this.lastTier = null;
            TL_stars$SavedStarGift tL_stars$SavedStarGift2 = this.userGift;
            this.premiumTier = null;
            this.gift = null;
            this.giftMine = false;
            this.userGift = tL_stars$SavedStarGift;
            this.allowResaleInGifts = false;
            this.inResalePage = false;
            this.title = null;
            this.subtitle = null;
            setPinned(tL_stars$SavedStarGift.pinned_to_top, tL_stars$SavedStarGift2 == tL_stars$SavedStarGift);
            updateRibbonText();
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0143  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0162  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0165  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0184  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x019f  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x01a4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void setStarsGift(TL_stars$StarGift tL_stars$StarGift, boolean z, boolean z2, boolean z3, boolean z4) {
            long j;
            boolean z5;
            TextView textView;
            int i;
            Runnable runnable = this.cancel;
            if (runnable != null) {
                runnable.run();
                this.cancel = null;
            }
            setSticker(tL_stars$StarGift.getDocument(), tL_stars$StarGift);
            TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop = (TL_stars$starGiftAttributeBackdrop) StarsController.findAttribute(tL_stars$StarGift.attributes, TL_stars$starGiftAttributeBackdrop.class);
            this.cardBackground.setBackdrop(tL_stars$starGiftAttributeBackdrop);
            this.cardBackground.setPattern((TL_stars$starGiftAttributePattern) StarsController.findAttribute(tL_stars$StarGift.attributes, TL_stars$starGiftAttributePattern.class));
            this.titleView.setVisibility(8);
            this.subtitleView.setVisibility(8);
            this.imageView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.lockView.setVisibility(8);
            FrameLayout.LayoutParams layoutParams = this.imageViewLayoutParams;
            layoutParams.gravity = 49;
            this.imageView.setLayoutParams(layoutParams);
            this.avatarView.setVisibility(8);
            this.priceView.setTextSize(1, 12.0f);
            if (z) {
                this.priceView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
                this.priceView.setText(LocaleController.getString(R.string.Gift2TransferMine));
                int iBlendOver = tL_stars$starGiftAttributeBackdrop != null ? Theme.blendOver(tL_stars$starGiftAttributeBackdrop.center_color | (-16777216), Theme.multAlpha(tL_stars$starGiftAttributeBackdrop.pattern_color | (-16777216), 0.55f)) : 1090519039;
                this.priceView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(13.0f), iBlendOver, Theme.blendOver(iBlendOver, 822083583)));
                this.priceView.setTextColor(-1);
            } else {
                if (z4) {
                    this.priceView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f), 0);
                    long j2 = tL_stars$StarGift.resell_stars;
                    int iBlendOver2 = Theme.blendOver(tL_stars$starGiftAttributeBackdrop.center_color | (-16777216), Theme.multAlpha(tL_stars$starGiftAttributeBackdrop.pattern_color | (-16777216), 0.55f));
                    this.priceView.setText(StarsIntroActivity.replaceStars("XTR " + LocaleController.formatNumber(j2, ',')));
                    this.priceView.setBackground(new StarsBackground(1895825407, iBlendOver2));
                    textView = this.priceView;
                    i = -1;
                } else {
                    this.priceView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f), 0);
                    long j3 = 0;
                    if (z3) {
                        long j4 = tL_stars$StarGift.availability_resale;
                        if (j4 > 0) {
                            j = tL_stars$StarGift.resell_min_stars;
                            if (j4 > 1 && j < MessagesController.getInstance(this.currentAccount).starsStargiftResaleAmountMax) {
                                z5 = true;
                            }
                            TextView textView2 = this.priceView;
                            StringBuilder sb = new StringBuilder();
                            sb.append("XTR ");
                            sb.append(LocaleController.formatNumber(j, ','));
                            sb.append(!z5 ? "+" : "");
                            textView2.setText(StarsIntroActivity.replaceStarsWithPlain(sb.toString(), 0.71f));
                            this.priceView.setBackground(new StarsBackground(!(tL_stars$StarGift instanceof TL_stars$TL_starGiftUnique) ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                            textView = this.priceView;
                            i = !Theme.isCurrentThemeDark() ? -1333971 : -2722014;
                        } else {
                            long j5 = tL_stars$StarGift.stars;
                            if (z2 && tL_stars$StarGift.can_upgrade) {
                                j3 = tL_stars$StarGift.upgrade_stars;
                            }
                            j = j3 + j5;
                        }
                        z5 = false;
                        TextView textView22 = this.priceView;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("XTR ");
                        sb2.append(LocaleController.formatNumber(j, ','));
                        sb2.append(!z5 ? "+" : "");
                        textView22.setText(StarsIntroActivity.replaceStarsWithPlain(sb2.toString(), 0.71f));
                        this.priceView.setBackground(new StarsBackground(!(tL_stars$StarGift instanceof TL_stars$TL_starGiftUnique) ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                        textView = this.priceView;
                        if (!Theme.isCurrentThemeDark()) {
                        }
                    }
                }
                textView.setTextColor(i);
            }
            ((ViewGroup.MarginLayoutParams) this.priceView.getLayoutParams()).topMargin = AndroidUtilities.dp(103.0f);
            ((FrameLayout.LayoutParams) this.priceView.getLayoutParams()).gravity = 49;
            this.starsPriceView.setVisibility(8);
            this.lastTier = null;
            this.premiumTier = null;
            this.gift = tL_stars$StarGift;
            this.giftMine = z;
            this.userGift = null;
            this.allowResaleInGifts = z3;
            this.inResalePage = z4;
            this.title = null;
            this.subtitle = null;
            setPinned(false, false);
            updateRibbonText();
        }
    }

    public static class Ribbon extends View {
        private RibbonDrawable drawable;

        public Ribbon(Context context) {
            super(context);
            this.drawable = new RibbonDrawable(this, 1.0f);
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.drawable.setBounds(0, 0, getWidth(), getHeight());
            this.drawable.draw(canvas);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f));
        }

        public void setBackdrop(TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop) {
            this.drawable.setBackdrop(tL_stars$starGiftAttributeBackdrop, false);
            invalidate();
        }

        public void setColor(int i) {
            this.drawable.setColor(i);
        }

        public void setColors(int i, int i2) {
            this.drawable.setColors(i, i2);
        }

        public void setStrokeColor(int i) {
            this.drawable.setStrokeColor(i);
        }

        public void setText(int i, CharSequence charSequence, boolean z) {
            this.drawable.setText(i, charSequence, z);
        }

        public void setText(CharSequence charSequence, boolean z) {
            this.drawable.setText(z ? 10 : 11, charSequence, z);
        }
    }

    public static class RibbonDrawable extends CompatDrawable {
        private Path path;
        private Paint strokePaint;
        private Text text;
        private int textColor;

        public RibbonDrawable(View view, float f) {
            super(view);
            this.path = new Path();
            this.strokePaint = new Paint(1);
            this.textColor = -1;
            fillRibbonPath(this.path, f);
            this.paint.setColor(-698031);
            this.paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dp(2.33f)));
            this.strokePaint.setColor(0);
            this.strokePaint.setStyle(Paint.Style.STROKE);
            this.strokePaint.setStrokeJoin(Paint.Join.ROUND);
            this.strokePaint.setStrokeCap(Paint.Cap.ROUND);
        }

        public static void fillRibbonPath(Path path, float f) {
            path.rewind();
            float f2 = 24.5f * f;
            path.moveTo(AndroidUtilities.dp(46.83f * f), AndroidUtilities.dp(f2));
            path.lineTo(AndroidUtilities.dp(23.5f * f), AndroidUtilities.dp(1.17f * f));
            path.cubicTo(AndroidUtilities.dp(22.75f * f), AndroidUtilities.dp(0.42f * f), AndroidUtilities.dp(21.73f * f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(20.68f * f), BitmapDescriptorFactory.HUE_RED);
            float f3 = 0.05f * f;
            path.cubicTo(AndroidUtilities.dp(19.62f * f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(2.73f * f), AndroidUtilities.dp(f3), AndroidUtilities.dp(1.55f * f), AndroidUtilities.dp(f3));
            path.cubicTo(AndroidUtilities.dp(0.36f * f), AndroidUtilities.dp(f3), AndroidUtilities.dp((-0.23f) * f), AndroidUtilities.dp(1.4885f * f), AndroidUtilities.dp(0.6f * f), AndroidUtilities.dp(2.32f * f));
            path.lineTo(AndroidUtilities.dp(45.72f * f), AndroidUtilities.dp(47.44f * f));
            float f4 = 48.0f * f;
            path.cubicTo(AndroidUtilities.dp(46.56f * f), AndroidUtilities.dp(48.28f * f), AndroidUtilities.dp(f4), AndroidUtilities.dp(47.68f * f), AndroidUtilities.dp(f4), AndroidUtilities.dp(46.5f * f));
            path.cubicTo(AndroidUtilities.dp(f4), AndroidUtilities.dp(45.31f * f), AndroidUtilities.dp(f4), AndroidUtilities.dp(28.38f * f), AndroidUtilities.dp(f4), AndroidUtilities.dp(27.32f * f));
            path.cubicTo(AndroidUtilities.dp(f4), AndroidUtilities.dp(26.26f * f), AndroidUtilities.dp(47.5f * f), AndroidUtilities.dp(25.24f * f), AndroidUtilities.dp(f * 46.82f), AndroidUtilities.dp(f2));
            path.close();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().right - AndroidUtilities.dp(48.0f), getBounds().top);
            if (this.strokePaint.getAlpha() > 0) {
                this.strokePaint.setStrokeWidth(AndroidUtilities.dp(1.33f) * 2);
                canvas.drawPath(this.path, this.strokePaint);
            }
            canvas.drawPath(this.path, this.paint);
            if (this.text != null) {
                canvas.save();
                canvas.rotate(45.0f, (getBounds().width() / 2.0f) + AndroidUtilities.dp(6.0f), (getBounds().height() / 2.0f) - AndroidUtilities.dp(6.0f));
                float fMin = Math.min(1.0f, AndroidUtilities.dp(40.0f) / this.text.getCurrentWidth());
                canvas.scale(fMin, fMin, (getBounds().width() / 2.0f) + AndroidUtilities.dp(6.0f), (getBounds().height() / 2.0f) - AndroidUtilities.dp(6.0f));
                this.text.draw(canvas, ((getBounds().width() / 2.0f) + AndroidUtilities.dp(6.0f)) - (this.text.getWidth() / 2.0f), (getBounds().height() / 2.0f) - AndroidUtilities.dp(5.0f), this.textColor, 1.0f);
                canvas.restore();
            }
            canvas.restore();
        }

        public void setBackdrop(TL_stars$starGiftAttributeBackdrop tL_stars$starGiftAttributeBackdrop, boolean z) {
            if (tL_stars$starGiftAttributeBackdrop == null) {
                this.paint.setShader(null);
                return;
            }
            Paint paint = this.paint;
            float fDp = AndroidUtilities.dp(48.0f);
            float fDp2 = AndroidUtilities.dp(48.0f);
            int[] iArr = {Theme.adaptHSV(tL_stars$starGiftAttributeBackdrop.center_color | (-16777216), z ? 0.07f : 0.05f, z ? -0.15f : -0.1f), Theme.adaptHSV(tL_stars$starGiftAttributeBackdrop.edge_color | (-16777216), z ? 0.07f : 0.05f, z ? -0.15f : -0.1f)};
            float f = BitmapDescriptorFactory.HUE_RED;
            float f2 = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            if (!z) {
                f = 1.0f;
            }
            paint.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, fDp, fDp2, iArr, new float[]{f2, f}, Shader.TileMode.CLAMP));
        }

        public void setColor(int i) {
            this.paint.setShader(null);
            this.paint.setColor(i);
        }

        public void setColors(int i, int i2) {
            this.paint.setShader(new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(48.0f), AndroidUtilities.dp(48.0f), new int[]{i, i2}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
        }

        public void setStrokeColor(int i) {
            this.strokePaint.setColor(i);
        }

        public void setText(int i, CharSequence charSequence, boolean z) {
            this.text = new Text(charSequence, i, z ? AndroidUtilities.bold() : null);
        }

        public void setTextColor(int i) {
            this.textColor = i;
        }
    }

    public static class StarsBackground extends Drawable {
        public final Paint backgroundPaint;
        private final int color;
        public final StarsReactionsSheet.Particles particles;
        private final int particlesColor;
        public final Path path;
        public final RectF rectF;

        public StarsBackground(int i) {
            this(ColorUtils.setAlphaComponent(i, 128), i);
        }

        public StarsBackground(int i, int i2) {
            this.rectF = new RectF();
            this.path = new Path();
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            this.particles = new StarsReactionsSheet.Particles(1, 25);
            this.particlesColor = i;
            this.color = i2;
            paint.setColor(i2);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            float fMin = Math.min(getBounds().width(), getBounds().height()) / 2.0f;
            this.rectF.set(getBounds());
            this.path.rewind();
            this.path.addRoundRect(this.rectF, fMin, fMin, Path.Direction.CW);
            canvas.drawPath(this.path, this.backgroundPaint);
            canvas.save();
            canvas.clipPath(this.path);
            this.particles.setBounds(this.rectF);
            this.particles.process();
            this.particles.draw(canvas, this.particlesColor);
            canvas.restore();
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.backgroundPaint.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.backgroundPaint.setColorFilter(colorFilter);
        }
    }

    public static class Tabs extends HorizontalScrollView {
        private AnimatedFloat animatedSelected;
        private final RectF ceiledRect;
        private final RectF flooredRect;
        private int lastId;
        private final LinearLayout layout;
        private final Theme.ResourcesProvider resourcesProvider;
        private int selected;
        private final Paint selectedPaint;
        private final RectF selectedRect;
        private final ArrayList tabs;

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            public static UItem asTabs(int i, ArrayList arrayList, int i2, Utilities.Callback callback) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.object = arrayList;
                uItemOfFactory.intValue = i2;
                uItemOfFactory.object2 = callback;
                return uItemOfFactory;
            }

            private static boolean eq(ArrayList arrayList, ArrayList arrayList2) {
                if (arrayList == arrayList2) {
                    return true;
                }
                if (arrayList == null && arrayList2 == null) {
                    return true;
                }
                if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                    return false;
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    if (!TextUtils.equals((CharSequence) arrayList.get(i), (CharSequence) arrayList2.get(i))) {
                        return false;
                    }
                }
                return true;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((Tabs) view).set(uItem.id, (ArrayList) uItem.object, uItem.intValue, (Utilities.Callback) uItem.object2);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean contentsEquals(UItem uItem, UItem uItem2) {
                return uItem.intValue == uItem2.intValue && uItem.object2 == uItem2.object2 && equals(uItem, uItem2);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public Tabs createView(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new Tabs(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                return uItem.id == uItem2.id && eq((ArrayList) uItem.object, (ArrayList) uItem2.object);
            }
        }

        public Tabs(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.tabs = new ArrayList();
            this.flooredRect = new RectF();
            this.ceiledRect = new RectF();
            this.selectedRect = new RectF();
            this.selectedPaint = new Paint(1);
            this.lastId = Integer.MIN_VALUE;
            this.resourcesProvider = resourcesProvider;
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Gifts.GiftSheet.Tabs.1
                private final void setBounds(RectF rectF, View view) {
                    rectF.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                }

                /* JADX WARN: Removed duplicated region for block: B:12:0x00a8  */
                /* JADX WARN: Removed duplicated region for block: B:13:0x00be  */
                @Override // android.view.ViewGroup, android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                protected void dispatchDraw(Canvas canvas) {
                    RectF rectF;
                    Object obj;
                    Tabs.this.selectedPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_dialogGiftsTabText), 0.1f));
                    float f = Tabs.this.animatedSelected.set(Tabs.this.selected);
                    double d = f;
                    int iClamp = Utilities.clamp((int) Math.floor(d), Tabs.this.tabs.size() - 1, 0);
                    int iClamp2 = Utilities.clamp((int) Math.ceil(d), Tabs.this.tabs.size() - 1, 0);
                    if (iClamp < Tabs.this.tabs.size()) {
                        rectF = Tabs.this.flooredRect;
                        obj = Tabs.this.tabs.get(iClamp);
                    } else {
                        if (iClamp2 >= Tabs.this.tabs.size()) {
                            Tabs.this.flooredRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                            if (iClamp2 >= Tabs.this.tabs.size()) {
                                setBounds(Tabs.this.ceiledRect, (View) Tabs.this.tabs.get(iClamp2));
                            } else if (iClamp < Tabs.this.tabs.size()) {
                                setBounds(Tabs.this.ceiledRect, (View) Tabs.this.tabs.get(iClamp));
                            } else {
                                Tabs.this.ceiledRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                            }
                            AndroidUtilities.lerp(Tabs.this.flooredRect, Tabs.this.ceiledRect, f - iClamp, Tabs.this.selectedRect);
                            float fHeight = Tabs.this.selectedRect.height() / 2.0f;
                            canvas.drawRoundRect(Tabs.this.selectedRect, fHeight, fHeight, Tabs.this.selectedPaint);
                            super.dispatchDraw(canvas);
                        }
                        rectF = Tabs.this.flooredRect;
                        obj = Tabs.this.tabs.get(iClamp2);
                    }
                    setBounds(rectF, (View) obj);
                    if (iClamp2 >= Tabs.this.tabs.size()) {
                    }
                    AndroidUtilities.lerp(Tabs.this.flooredRect, Tabs.this.ceiledRect, f - iClamp, Tabs.this.selectedRect);
                    float fHeight2 = Tabs.this.selectedRect.height() / 2.0f;
                    canvas.drawRoundRect(Tabs.this.selectedRect, fHeight2, fHeight2, Tabs.this.selectedPaint);
                    super.dispatchDraw(canvas);
                }
            };
            this.layout = linearLayout;
            linearLayout.setClipToPadding(false);
            linearLayout.setClipChildren(false);
            linearLayout.setOrientation(0);
            linearLayout.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f));
            addView(linearLayout);
            setHorizontalScrollBarEnabled(false);
            setClipToPadding(false);
            setClipChildren(false);
            this.animatedSelected = new AnimatedFloat(linearLayout, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$set$0(int i, Utilities.Callback callback, View view) {
            TextView textView = (TextView) this.tabs.get(i);
            smoothScrollTo((textView.getLeft() + (textView.getWidth() / 2)) - (getWidth() / 2), 0);
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
        }

        @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }

        public void set(int i, ArrayList arrayList, int i2, final Utilities.Callback callback) {
            boolean z = this.lastId == i;
            this.lastId = i;
            if (this.tabs.size() != arrayList.size()) {
                int i3 = 0;
                int i4 = 0;
                while (i3 < this.tabs.size()) {
                    CharSequence charSequence = i4 < arrayList.size() ? (CharSequence) arrayList.get(i4) : null;
                    if (charSequence == null) {
                        this.layout.removeView((View) this.tabs.remove(i3));
                        i3--;
                    } else {
                        ((TextView) this.tabs.get(i3)).setText(charSequence);
                    }
                    i4++;
                    i3++;
                }
                while (i4 < arrayList.size()) {
                    TextView textView = new TextView(getContext());
                    textView.setGravity(17);
                    textView.setText((CharSequence) arrayList.get(i4));
                    textView.setTypeface(AndroidUtilities.bold());
                    textView.setTextColor(Theme.blendOver(Theme.getColor(Theme.key_dialogGiftsBackground), Theme.getColor(Theme.key_dialogGiftsTabText)));
                    textView.setTextSize(1, 14.0f);
                    textView.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
                    ScaleStateListAnimator.apply(textView, 0.075f, 1.4f);
                    this.layout.addView(textView, LayoutHelper.createLinear(-2, 26));
                    this.tabs.add(textView);
                    i4++;
                }
            }
            this.selected = i2;
            if (!z) {
                this.animatedSelected.set(i2, true);
            }
            this.layout.invalidate();
            for (final int i5 = 0; i5 < this.tabs.size(); i5++) {
                ((TextView) this.tabs.get(i5)).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$Tabs$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$set$0(i5, callback, view);
                    }
                });
            }
        }
    }

    public GiftSheet(Context context, int i, long j, Runnable runnable) {
        this(context, i, j, null, runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0428  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public GiftSheet(final Context context, final int i, final long j, List list, final Runnable runnable) {
        int i2;
        super(context, null, false, false, false, null);
        this.premiumTiers = new ArrayList();
        this.TAB_ALL = -1;
        this.TAB_MY_GIFTS = -1;
        this.TAB_LIMITED = -1;
        this.TAB_IN_STOCK = -1;
        this.TAB_RESALE = -1;
        this.tabs = new ArrayList();
        this.currentAccount = i;
        this.dialogId = j;
        boolean z = UserConfig.getInstance(i).getClientUserId() == j;
        this.self = z;
        this.options = list;
        this.closeParentSheet = runnable;
        int i3 = Theme.key_dialogGiftsBackground;
        setBackgroundColor(Theme.getColor(i3));
        fixNavigationBar(Theme.getColor(i3));
        this.myGifts = StarsController.getInstance(i).getProfileGiftsList(UserConfig.getInstance(i).getClientUserId());
        StarsController.getInstance(i).loadStarGifts();
        BackupImageView backupImageView = new BackupImageView(context);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        if (j > 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            this.name = UserObject.getForcedFirstName(user);
            avatarDrawable.setInfo(user);
            backupImageView.setForUserOrChat(user, avatarDrawable);
            TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
            this.userSettings = (j == UserConfig.getInstance(i).getClientUserId() || userFull == null) ? null : userFull.disallowed_stargifts;
            if (userFull == null) {
                MessagesController.getInstance(i).loadFullUser(user, 0, true);
            }
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            this.name = chat == null ? "" : chat.title;
            avatarDrawable.setInfo(chat);
            backupImageView.setForUserOrChat(chat, avatarDrawable);
        }
        this.topPadding = 0.1f;
        StarsIntroActivity.StarsBalanceView starsBalanceView = new StarsIntroActivity.StarsBalanceView(context, i);
        this.balanceView = starsBalanceView;
        ScaleStateListAnimator.apply(starsBalanceView);
        starsBalanceView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.premiumHeaderView = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.Gifts.GiftSheet.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i4, int i5) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(120.0f), 1073741824));
            }
        };
        this.topView = frameLayout2;
        frameLayout2.setClipChildren(false);
        frameLayout2.setClipToPadding(false);
        frameLayout2.addView(StarsIntroActivity.makeParticlesView(context, 70, 0), LayoutHelper.createFrame(-1, -1.0f));
        backupImageView.setRoundRadius(AndroidUtilities.dp(42.0f));
        frameLayout2.addView(backupImageView, LayoutHelper.createFrame(84, 84.0f, 17, BitmapDescriptorFactory.HUE_RED, 15.0f, BitmapDescriptorFactory.HUE_RED, 17.0f));
        ScaleStateListAnimator.apply(backupImageView);
        backupImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(j, view);
            }
        });
        frameLayout2.addView(starsBalanceView, LayoutHelper.createFrame(-2, -2.0f, 53, BitmapDescriptorFactory.HUE_RED, -3.0f, -10.0f, BitmapDescriptorFactory.HUE_RED));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 55));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        int i4 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 4, 0, 4, 0));
        textView.setMaxWidth(HintView2.cutInFancyHalf(textView.getText(), textView.getPaint()));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, this.resourcesProvider);
        int i5 = Theme.key_chat_messageLinkIn;
        linksTextView.setLinkTextColor(Theme.getColor(i5, this.resourcesProvider));
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        linksTextView.setGravity(17);
        linksTextView.setLineSpacing(AndroidUtilities.dp(2.33f), 1.0f);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 1, 4, 4, 4, 12));
        textView.setText(LocaleController.getString(R.string.Gift2Premium));
        linksTextView.setText(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.formatString(R.string.Gift2PremiumInfo, this.name)), " ", AndroidUtilities.replaceArrows(AndroidUtilities.makeClickable(LocaleController.getString(R.string.Gift2PremiumInfoLink), new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                GiftSheet.lambda$new$2();
            }
        }), true)));
        linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), linksTextView.getPaint()));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.starsHeaderView = linearLayout2;
        linearLayout2.setOrientation(1);
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        textView2.setGravity(17);
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 4, 0, 4, 0));
        final LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context, this.resourcesProvider);
        linksTextView2.setLinkTextColor(Theme.getColor(i5, this.resourcesProvider));
        linksTextView2.setTextSize(1, 14.0f);
        linksTextView2.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        linksTextView2.setGravity(17);
        textView2.setText(LocaleController.getString(j < 0 ? R.string.Gift2StarsChannel : z ? R.string.Gift2StarsSelf : R.string.Gift2Stars));
        if (z) {
            linearLayout2.addView(linksTextView2, LayoutHelper.createLinear(-2, -2, 1, 26, 9, 26, 4));
            LinkSpanDrawable.LinksTextView linksTextView3 = new LinkSpanDrawable.LinksTextView(context, this.resourcesProvider);
            linksTextView3.setLinkTextColor(Theme.getColor(i5, this.resourcesProvider));
            linksTextView3.setTextSize(1, 14.0f);
            linksTextView3.setTextColor(Theme.getColor(i4, this.resourcesProvider));
            linksTextView3.setGravity(17);
            linearLayout2.addView(linksTextView3, LayoutHelper.createLinear(-2, -2, 1, 26, 4, 26, 6));
            linksTextView2.setText(LocaleController.getString(R.string.Gift2StarsSelfInfo1));
            linksTextView3.setText(LocaleController.getString(R.string.Gift2StarsSelfInfo2));
        } else {
            if (j >= 0) {
                linearLayout2.addView(linksTextView2, LayoutHelper.createLinear(-1, -2, 1, 4, 9, 4, 6));
                final StarsController.GiftsList profileGiftsList = StarsController.getInstance(i).getProfileGiftsList(j);
                final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$5(profileGiftsList, j, linksTextView2, runnable, context);
                    }
                };
                runnable2.run();
                linksTextView2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Gifts.GiftSheet.2
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                        runnable2.run();
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                    }
                });
                i2 = 3;
                if (profileGiftsList.gifts.size() < 3) {
                    profileGiftsList.load();
                }
                NotificationCenter.getInstance(i).listen(linksTextView2, NotificationCenter.starUserGiftsLoaded, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda7
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        GiftSheet.lambda$new$6(profileGiftsList, runnable2, (Object[]) obj);
                    }
                });
                ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context, i2);
                this.layoutManager = extendedGridLayoutManager;
                extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Gifts.GiftSheet.3
                    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                    public int getSpanSize(int i6) {
                        UItem item;
                        int i7;
                        return (GiftSheet.this.adapter == null || i6 == 0 || (item = GiftSheet.this.adapter.getItem(i6 + (-1))) == null || (i7 = item.spanCount) == -1) ? GiftSheet.this.layoutManager.getSpanCount() : i7;
                    }
                });
                this.recyclerListView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
                this.recyclerListView.setClipToPadding(false);
                this.recyclerListView.setClipChildren(false);
                this.recyclerListView.setLayoutManager(extendedGridLayoutManager);
                this.recyclerListView.setSelectorType(9);
                this.recyclerListView.setSelectorDrawableColor(0);
                DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Gifts.GiftSheet.4
                    @Override // androidx.recyclerview.widget.DefaultItemAnimator
                    protected float animateByScale(View view) {
                        return 0.3f;
                    }
                };
                this.itemAnimator = defaultItemAnimator;
                defaultItemAnimator.setDelayAnimations(false);
                defaultItemAnimator.setSupportsChangeAnimations(false);
                defaultItemAnimator.setDurations(350L);
                defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                defaultItemAnimator.setDelayIncrement(40L);
                this.recyclerListView.setItemAnimator(defaultItemAnimator);
                this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda8
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view, int i6) {
                        this.f$0.lambda$new$13(context, i, runnable, j, view, i6);
                    }
                });
                updatePremiumTiers();
                this.adapter.update(false);
                updateTitle();
                if (BirthdayController.getInstance(i).isToday(j)) {
                    setBirthday();
                }
                NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.billingProductDetailsUpdated);
                NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starGiftsLoaded);
                NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.userInfoDidLoad);
                NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starGiftSoldOut);
                NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starUserGiftsLoaded);
                this.actionBar.setTitle(getTitle());
                NotificationCenter.listenEmojiLoading(this.actionBar.getTitleTextView());
            }
            linearLayout2.addView(linksTextView2, LayoutHelper.createLinear(-2, -2, 1, 26, 9, 26, 4));
            NotificationCenter.listenEmojiLoading(linksTextView2);
            linksTextView2.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.formatString(R.string.Gift2StarsChannelInfo, this.name)), linksTextView2.getPaint().getFontMetricsInt(), false));
        }
        i2 = 3;
        ExtendedGridLayoutManager extendedGridLayoutManager2 = new ExtendedGridLayoutManager(context, i2);
        this.layoutManager = extendedGridLayoutManager2;
        extendedGridLayoutManager2.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Gifts.GiftSheet.3
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i6) {
                UItem item;
                int i7;
                return (GiftSheet.this.adapter == null || i6 == 0 || (item = GiftSheet.this.adapter.getItem(i6 + (-1))) == null || (i7 = item.spanCount) == -1) ? GiftSheet.this.layoutManager.getSpanCount() : i7;
            }
        });
        this.recyclerListView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setClipChildren(false);
        this.recyclerListView.setLayoutManager(extendedGridLayoutManager2);
        this.recyclerListView.setSelectorType(9);
        this.recyclerListView.setSelectorDrawableColor(0);
        DefaultItemAnimator defaultItemAnimator2 = new DefaultItemAnimator() { // from class: org.telegram.ui.Gifts.GiftSheet.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected float animateByScale(View view) {
                return 0.3f;
            }
        };
        this.itemAnimator = defaultItemAnimator2;
        defaultItemAnimator2.setDelayAnimations(false);
        defaultItemAnimator2.setSupportsChangeAnimations(false);
        defaultItemAnimator2.setDurations(350L);
        defaultItemAnimator2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator2.setDelayIncrement(40L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator2);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i6) {
                this.f$0.lambda$new$13(context, i, runnable, j, view, i6);
            }
        });
        updatePremiumTiers();
        this.adapter.update(false);
        updateTitle();
        if (BirthdayController.getInstance(i).isToday(j)) {
        }
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.userInfoDidLoad);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starGiftSoldOut);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starUserGiftsLoaded);
        this.actionBar.setTitle(getTitle());
        NotificationCenter.listenEmojiLoading(this.actionBar.getTitleTextView());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$fillItems$18(TL_stars$StarGift tL_stars$StarGift) {
        boolean z;
        if (tL_stars$StarGift instanceof TL_stars$TL_starGiftUnique) {
            z = this.userSettings.disallow_unique_stargifts;
        } else {
            if (tL_stars$StarGift.limited) {
                TLRPC.DisallowedGiftsSettings disallowedGiftsSettings = this.userSettings;
                if (disallowedGiftsSettings.disallow_limited_stargifts) {
                    return tL_stars$StarGift.can_upgrade && !disallowedGiftsSettings.disallow_unique_stargifts;
                }
                return true;
            }
            z = this.userSettings.disallow_unlimited_stargifts;
        }
        return !z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        BaseFragment lastFragment;
        if (this.balanceView.lastBalance > 0 && (lastFragment = LaunchActivity.getLastFragment()) != null) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            lastFragment.showAsSheet(new StarsIntroActivity(), bottomSheetParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(long j, View view) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        lambda$new$0();
        safeLastFragment.presentFragment(ProfileActivity.of(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final StarGiftSheet starGiftSheet, long j, final Runnable runnable, final Browser.Progress progress) {
        progress.init();
        starGiftSheet.doTransfer(j, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$9(progress, runnable, starGiftSheet, (TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(Context context, int i, final Runnable runnable, final long j, View view, int i2) {
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings2;
        TL_stars$SavedStarGift tL_stars$SavedStarGift;
        UItem item = this.adapter.getItem(i2 - 1);
        if (item != null && item.instanceOf(GiftCell.Factory.class)) {
            Object obj = item.object;
            if (obj instanceof GiftPremiumBottomSheet$GiftTier) {
                new SendGiftSheet(context, i, (GiftPremiumBottomSheet$GiftTier) obj, this.dialogId, new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$7(runnable);
                    }
                }).show();
                return;
            }
            if (obj instanceof TL_stars$StarGift) {
                TL_stars$StarGift tL_stars$StarGift = (TL_stars$StarGift) obj;
                StarsController.GiftsList giftsList = this.myGifts;
                if (giftsList != null && this.selectedTab == this.TAB_MY_GIFTS) {
                    Iterator it = giftsList.gifts.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            tL_stars$SavedStarGift = null;
                            break;
                        }
                        TL_stars$SavedStarGift tL_stars$SavedStarGift2 = (TL_stars$SavedStarGift) it.next();
                        if (tL_stars$SavedStarGift2.gift.id == tL_stars$StarGift.id) {
                            tL_stars$SavedStarGift = tL_stars$SavedStarGift2;
                            break;
                        }
                    }
                    if (tL_stars$SavedStarGift == null) {
                        return;
                    }
                    final StarGiftSheet starGiftSheet = new StarGiftSheet(getContext(), i, UserConfig.getInstance(i).getClientUserId(), this.resourcesProvider) { // from class: org.telegram.ui.Gifts.GiftSheet.5
                        @Override // org.telegram.ui.Stars.StarGiftSheet
                        public BulletinFactory getBulletinFactory() {
                            GiftSheet giftSheet = GiftSheet.this;
                            return BulletinFactory.of(giftSheet.container, giftSheet.resourcesProvider);
                        }
                    }.set(tL_stars$SavedStarGift, null);
                    starGiftSheet.openTransferAlert(j, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda10
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj2) {
                            this.f$0.lambda$new$10(starGiftSheet, j, runnable, (Browser.Progress) obj2);
                        }
                    });
                    return;
                }
                if (!item.accent || tL_stars$StarGift.availability_resale <= 0) {
                    if (tL_stars$StarGift.sold_out) {
                        StarsIntroActivity.showSoldOutGiftSheet(context, i, tL_stars$StarGift, this.resourcesProvider);
                        return;
                    }
                    long j2 = this.dialogId;
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$12(runnable);
                        }
                    };
                    boolean z = tL_stars$StarGift.limited;
                    new SendGiftSheet(context, i, tL_stars$StarGift, j2, runnable2, z && (disallowedGiftsSettings2 = this.userSettings) != null && disallowedGiftsSettings2.disallow_limited_stargifts, z && (disallowedGiftsSettings = this.userSettings) != null && disallowedGiftsSettings.disallow_unique_stargifts).show();
                    return;
                }
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment == null) {
                    return;
                }
                BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                bottomSheetParams.transitionFromLeft = true;
                bottomSheetParams.allowNestedScroll = false;
                ResaleGiftsFragment resaleGiftsFragment = new ResaleGiftsFragment(j, tL_stars$StarGift.title, tL_stars$StarGift.id, this.resourcesProvider);
                resaleGiftsFragment.setCloseParentSheet(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$11(runnable);
                    }
                });
                safeLastFragment.showAsSheet(resaleGiftsFragment, bottomSheetParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$2() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        lastFragment.showAsSheet(new PremiumPreviewFragment("gifts"), bottomSheetParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(Runnable runnable, long j) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        lambda$new$0();
        if (runnable != null) {
            runnable.run();
        }
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", j);
        bundle.putBoolean("open_gifts", true);
        safeLastFragment.presentFragment(new ProfileActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$4(Context context) {
        new ExplainStarsSheet(context).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$new$5(StarsController.GiftsList giftsList, final long j, LinkSpanDrawable.LinksTextView linksTextView, final Runnable runnable, final Context context) {
        Runnable runnable2;
        String str;
        TL_stars$StarGift tL_stars$StarGift;
        TLRPC.Document document;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(R.string.Gift2StarsInfo, this.name)));
        spannableStringBuilder.append((CharSequence) " ");
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (int i = 0; i < giftsList.gifts.size() && hashSet.size() < 3; i++) {
            TL_stars$SavedStarGift tL_stars$SavedStarGift = (TL_stars$SavedStarGift) giftsList.gifts.get(i);
            if (tL_stars$SavedStarGift != null && (tL_stars$StarGift = tL_stars$SavedStarGift.gift) != null && (document = tL_stars$StarGift.getDocument()) != null && !hashSet.contains(Long.valueOf(document.id))) {
                hashSet2.add(document);
                hashSet.add(Long.valueOf(document.id));
            }
        }
        if (hashSet2.size() > 0) {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) LocaleController.formatString(R.string.Gift2StarsInfoProfileLink, DialogObject.getShortName(j)).replaceAll(" ", " "));
            spannableStringBuilder2.append((CharSequence) " ");
            Iterator it = hashSet2.iterator();
            while (it.hasNext()) {
                TLRPC.Document document2 = (TLRPC.Document) it.next();
                spannableStringBuilder2.append((CharSequence) "\u2060e");
                spannableStringBuilder2.setSpan(new AnimatedEmojiSpan(document2, linksTextView.getPaint().getFontMetricsInt()), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 33);
            }
            spannableStringBuilder2.append((CharSequence) " >");
            runnable2 = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$3(runnable, j);
                }
            };
            str = spannableStringBuilder2;
        } else {
            String string = LocaleController.getString(R.string.Gift2StarsInfoLink);
            runnable2 = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    GiftSheet.lambda$new$4(context);
                }
            };
            str = string;
        }
        spannableStringBuilder.append(AndroidUtilities.replaceArrows(AndroidUtilities.makeClickable(str, runnable2), true));
        linksTextView.setText(spannableStringBuilder);
        linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), linksTextView.getPaint()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$6(StarsController.GiftsList giftsList, Runnable runnable, Object[] objArr) {
        if (objArr[1] == giftsList) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$8(StarGiftSheet starGiftSheet, TLRPC.TL_error tL_error) {
        starGiftSheet.getBulletinFactory().showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(Browser.Progress progress, Runnable runnable, final StarGiftSheet starGiftSheet, final TLRPC.TL_error tL_error) {
        progress.end();
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    GiftSheet.lambda$new$8(starGiftSheet, tL_error);
                }
            });
        } else {
            lambda$new$0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePremiumTiers$15() {
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePremiumTiers$16(BillingResult billingResult, List list) {
        Iterator it = list.iterator();
        long pricePerMonth = 0;
        while (it.hasNext()) {
            ProductDetails productDetails = (ProductDetails) it.next();
            Iterator it2 = this.premiumTiers.iterator();
            while (true) {
                if (it2.hasNext()) {
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier = (GiftPremiumBottomSheet$GiftTier) it2.next();
                    if (giftPremiumBottomSheet$GiftTier.getStoreProduct() != null && giftPremiumBottomSheet$GiftTier.getStoreProduct().equals(productDetails.getProductId())) {
                        giftPremiumBottomSheet$GiftTier.setGooglePlayProductDetails(productDetails);
                        if (giftPremiumBottomSheet$GiftTier.getPricePerMonth() > pricePerMonth) {
                            pricePerMonth = giftPremiumBottomSheet$GiftTier.getPricePerMonth();
                        }
                    }
                }
            }
        }
        Iterator it3 = this.premiumTiers.iterator();
        while (it3.hasNext()) {
            ((GiftPremiumBottomSheet$GiftTier) it3.next()).setPricePerMonthRegular(pricePerMonth);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updatePremiumTiers$15();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePremiumTiers$17(List list) {
        if (getContext() == null || !isShown()) {
            return;
        }
        List listFilterGiftOptions = BoostRepository.filterGiftOptions(list, 1);
        this.options = listFilterGiftOptions;
        List listFilterGiftOptionsByBilling = BoostRepository.filterGiftOptionsByBilling(listFilterGiftOptions);
        this.options = listFilterGiftOptionsByBilling;
        if (listFilterGiftOptionsByBilling.isEmpty()) {
            return;
        }
        updatePremiumTiers();
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectTab(int i) {
        if (this.selectedTab == i) {
            return;
        }
        this.selectedTab = i;
        this.itemAnimator.endAnimations();
        this.adapter.update(true);
    }

    private void updatePremiumTiers() {
        List list;
        TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption;
        this.premiumTiers.clear();
        if (this.premiumTiers.isEmpty() && (list = this.options) != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            long pricePerMonth = 0;
            for (int size = this.options.size() - 1; size >= 0; size--) {
                TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption2 = (TLRPC.TL_premiumGiftCodeOption) this.options.get(size);
                if (!"XTR".equalsIgnoreCase(tL_premiumGiftCodeOption2.currency)) {
                    Iterator it = this.options.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            tL_premiumGiftCodeOption = null;
                            break;
                        }
                        tL_premiumGiftCodeOption = (TLRPC.TL_premiumGiftCodeOption) it.next();
                        if (tL_premiumGiftCodeOption != tL_premiumGiftCodeOption2 && "XTR".equalsIgnoreCase(tL_premiumGiftCodeOption.currency) && tL_premiumGiftCodeOption.months == tL_premiumGiftCodeOption2.months) {
                            break;
                        }
                    }
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier = new GiftPremiumBottomSheet$GiftTier(tL_premiumGiftCodeOption2, tL_premiumGiftCodeOption);
                    this.premiumTiers.add(giftPremiumBottomSheet$GiftTier);
                    if (BuildVars.useInvoiceBilling()) {
                        if (giftPremiumBottomSheet$GiftTier.getPricePerMonth() > pricePerMonth) {
                            pricePerMonth = giftPremiumBottomSheet$GiftTier.getPricePerMonth();
                        }
                    } else if (giftPremiumBottomSheet$GiftTier.getStoreProduct() != null && BillingController.getInstance().isReady()) {
                        arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(giftPremiumBottomSheet$GiftTier.getStoreProduct()).build());
                    }
                }
            }
            if (BuildVars.useInvoiceBilling()) {
                Iterator it2 = this.premiumTiers.iterator();
                while (it2.hasNext()) {
                    ((GiftPremiumBottomSheet$GiftTier) it2.next()).setPricePerMonthRegular(pricePerMonth);
                }
            } else if (!arrayList.isEmpty()) {
                System.currentTimeMillis();
                BillingController.getInstance().queryProductDetails(arrayList, new ProductDetailsResponseListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda0
                    @Override // com.android.billingclient.api.ProductDetailsResponseListener
                    public final void onProductDetailsResponse(BillingResult billingResult, List list2) {
                        this.f$0.lambda$updatePremiumTiers$16(billingResult, list2);
                    }
                });
            }
        }
        if (this.premiumTiers.isEmpty()) {
            BoostRepository.loadGiftOptions(this.currentAccount, null, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$updatePremiumTiers$17((List) obj);
                }
            });
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalAdapter universalAdapter;
        if (i == NotificationCenter.billingProductDetailsUpdated) {
            updatePremiumTiers();
            return;
        }
        if (i == NotificationCenter.starGiftsLoaded) {
            universalAdapter = this.adapter;
            if (universalAdapter == null) {
                return;
            }
        } else if (i == NotificationCenter.userInfoDidLoad) {
            if (!isShown()) {
                return;
            }
            long jLongValue = ((Long) objArr[0]).longValue();
            long j = this.dialogId;
            if (jLongValue == j && j > 0) {
                TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(this.dialogId);
                TLRPC.DisallowedGiftsSettings disallowedGiftsSettings = (this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() || userFull == null) ? null : userFull.disallowed_stargifts;
                this.userSettings = disallowedGiftsSettings;
                if (disallowedGiftsSettings != null && disallowedGiftsSettings.disallow_premium_gifts && disallowedGiftsSettings.disallow_unique_stargifts && disallowedGiftsSettings.disallow_limited_stargifts && disallowedGiftsSettings.disallow_unlimited_stargifts) {
                    lambda$new$0();
                    BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment != null) {
                        BulletinFactory.of(safeLastFragment).createSimpleBulletin(R.raw.error, AndroidUtilities.replaceTags(LocaleController.formatString(R.string.UserDisallowedGifts, DialogObject.getShortName(this.dialogId)))).show();
                        return;
                    }
                    return;
                }
                UniversalAdapter universalAdapter2 = this.adapter;
                if (universalAdapter2 != null) {
                    universalAdapter2.update(true);
                }
            }
            ArrayList arrayList = this.premiumTiers;
            if (arrayList != null && !arrayList.isEmpty()) {
                return;
            }
            updatePremiumTiers();
            universalAdapter = this.adapter;
            if (universalAdapter == null) {
                return;
            }
        } else if (i == NotificationCenter.starGiftSoldOut) {
            if (!isShown()) {
                return;
            }
            TL_stars$StarGift tL_stars$StarGift = (TL_stars$StarGift) objArr[0];
            BulletinFactory.of(this.container, this.resourcesProvider).createEmojiBulletin(tL_stars$StarGift.sticker, LocaleController.getString(R.string.Gift2SoldOutTitle), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2SoldOutCount", tL_stars$StarGift.availability_total))).show();
            universalAdapter = this.adapter;
            if (universalAdapter == null) {
                return;
            }
        } else if (i != NotificationCenter.starUserGiftsLoaded || objArr[1] != this.myGifts || (universalAdapter = this.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.userInfoDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiftSoldOut);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
    }

    /* JADX WARN: Removed duplicated region for block: B:176:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0345  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        boolean z;
        boolean z2;
        int iDp;
        boolean z3;
        int i;
        StarsController.GiftsList giftsList;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings2;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings3;
        StarsController.GiftsList giftsList2;
        StarsController.GiftsList giftsList3;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings4;
        if (this.self || this.dialogId < 0 || ((disallowedGiftsSettings4 = this.userSettings) != null && disallowedGiftsSettings4.disallow_premium_gifts)) {
            z = false;
        } else {
            arrayList.add(UItem.asCustom(this.topView));
            arrayList.add(UItem.asCustom(this.premiumHeaderView));
            ArrayList arrayList2 = this.premiumTiers;
            if (arrayList2 == null || arrayList2.isEmpty()) {
                arrayList.add(UItem.asFlicker(1, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(2, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(3, 34).setSpanCount(1));
            } else {
                Iterator it = this.premiumTiers.iterator();
                while (it.hasNext()) {
                    arrayList.add(GiftCell.Factory.asPremiumGift((GiftPremiumBottomSheet$GiftTier) it.next()));
                }
            }
            z = true;
        }
        StarsController starsController = StarsController.getInstance(this.currentAccount);
        ArrayList arrayList3 = this.birthday ? starsController.birthdaySortedGifts : starsController.sortedGifts;
        if (this.userSettings != null) {
            arrayList3 = (ArrayList) Collection.EL.stream(arrayList3).filter(new Predicate() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda13
                @Override // j$.util.function.Predicate
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate.CC.$default$and(this, predicate);
                }

                @Override // j$.util.function.Predicate
                public /* synthetic */ Predicate negate() {
                    return Predicate.CC.$default$negate(this);
                }

                @Override // j$.util.function.Predicate
                public /* synthetic */ Predicate or(Predicate predicate) {
                    return Predicate.CC.$default$or(this, predicate);
                }

                @Override // j$.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$fillItems$18((TL_stars$StarGift) obj);
                }
            }).collect(Collectors.toCollection(new ChatActivity$$ExternalSyntheticLambda252()));
        }
        if (this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() || (giftsList3 = this.myGifts) == null) {
            z2 = false;
        } else {
            Iterator it2 = giftsList3.gifts.iterator();
            while (it2.hasNext()) {
                if (((TL_stars$SavedStarGift) it2.next()).gift instanceof TL_stars$TL_starGiftUnique) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        }
        if (MessagesController.getInstance(this.currentAccount).stargiftsBlocked || (arrayList3.isEmpty() && ((disallowedGiftsSettings3 = this.userSettings) == null || disallowedGiftsSettings3.disallow_unique_stargifts || (giftsList2 = this.myGifts) == null || giftsList2.gifts.isEmpty()))) {
            TLRPC.DisallowedGiftsSettings disallowedGiftsSettings5 = this.userSettings;
            if (disallowedGiftsSettings5 == null || disallowedGiftsSettings5.disallow_unique_stargifts || !arrayList3.isEmpty()) {
                return;
            } else {
                iDp = AndroidUtilities.dp(300.0f);
            }
        } else {
            arrayList.add(!z ? UItem.asCustom(this.topView) : UItem.asSpace(AndroidUtilities.dp(16.0f)));
            arrayList.add(UItem.asCustom(this.starsHeaderView));
            TreeSet treeSet = new TreeSet();
            TLRPC.DisallowedGiftsSettings disallowedGiftsSettings6 = this.userSettings;
            if (disallowedGiftsSettings6 == null || !disallowedGiftsSettings6.disallow_unique_stargifts) {
                z3 = false;
                for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                    TL_stars$StarGift tL_stars$StarGift = (TL_stars$StarGift) arrayList3.get(i2);
                    boolean z4 = z3;
                    treeSet.add(Long.valueOf(tL_stars$StarGift.stars));
                    z3 = tL_stars$StarGift.availability_resale > 0 ? true : z4;
                }
            } else {
                z3 = false;
            }
            ArrayList arrayList4 = new ArrayList();
            this.TAB_MY_GIFTS = -1;
            this.TAB_LIMITED = -1;
            this.TAB_IN_STOCK = -1;
            this.TAB_ALL = -1;
            if (!arrayList3.isEmpty()) {
                this.TAB_ALL = arrayList4.size();
                arrayList4.add(LocaleController.getString(R.string.Gift2TabAll));
            }
            TLRPC.DisallowedGiftsSettings disallowedGiftsSettings7 = this.userSettings;
            if ((disallowedGiftsSettings7 == null || !disallowedGiftsSettings7.disallow_unique_stargifts) && z2) {
                this.TAB_MY_GIFTS = arrayList4.size();
                arrayList4.add(LocaleController.getString(R.string.Gift2TabMine));
            }
            TLRPC.DisallowedGiftsSettings disallowedGiftsSettings8 = this.userSettings;
            if (disallowedGiftsSettings8 == null || !disallowedGiftsSettings8.disallow_limited_stargifts) {
                this.TAB_LIMITED = arrayList4.size();
                arrayList4.add(LocaleController.getString(R.string.Gift2TabLimited));
            }
            if (z3) {
                this.TAB_RESALE = arrayList4.size();
                arrayList4.add(LocaleController.getString(R.string.Gift2TabResale));
            }
            this.TAB_IN_STOCK = arrayList4.size();
            arrayList4.add(LocaleController.getString(R.string.Gift2TabInStock));
            int size = arrayList4.size();
            Iterator it3 = treeSet.iterator();
            ArrayList arrayList5 = new ArrayList();
            while (it3.hasNext()) {
                Long l = (Long) it3.next();
                arrayList4.add(StarsIntroActivity.replaceStarsWithPlain("⭐️ " + LocaleController.formatNumber(l.longValue(), ','), 0.8f));
                arrayList5.add(l);
            }
            arrayList.add(Tabs.Factory.asTabs(1, arrayList4, this.selectedTab, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda14
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.selectTab(((Integer) obj).intValue());
                }
            }));
            int i3 = this.selectedTab - size;
            long jLongValue = (i3 < 0 || i3 >= arrayList5.size()) ? 0L : ((Long) arrayList5.get(this.selectedTab - size)).longValue();
            if (this.myGifts != null && this.selectedTab == this.TAB_MY_GIFTS) {
                arrayList3 = new ArrayList();
                Iterator it4 = this.myGifts.gifts.iterator();
                while (it4.hasNext()) {
                    TL_stars$StarGift tL_stars$StarGift2 = ((TL_stars$SavedStarGift) it4.next()).gift;
                    if (tL_stars$StarGift2 instanceof TL_stars$TL_starGiftUnique) {
                        arrayList3.add(tL_stars$StarGift2);
                    }
                }
            }
            int i4 = 0;
            for (int i5 = 0; i5 < arrayList3.size(); i5++) {
                TL_stars$StarGift tL_stars$StarGift3 = (TL_stars$StarGift) arrayList3.get(i5);
                int i6 = this.selectedTab;
                if (i6 == this.TAB_ALL || ((i6 == this.TAB_LIMITED && tL_stars$StarGift3.limited) || i6 == this.TAB_MY_GIFTS || ((i6 == this.TAB_IN_STOCK && !tL_stars$StarGift3.sold_out) || ((i6 == this.TAB_RESALE && tL_stars$StarGift3.availability_resale > 0) || (i6 >= size && tL_stars$StarGift3.stars == jLongValue))))) {
                    if (!tL_stars$StarGift3.sold_out && tL_stars$StarGift3.availability_resale > 0 && i6 != this.TAB_RESALE) {
                        arrayList.add(GiftCell.Factory.asStarGift(i6, tL_stars$StarGift3, i6 == this.TAB_MY_GIFTS, tL_stars$StarGift3.limited && (disallowedGiftsSettings2 = this.userSettings) != null && disallowedGiftsSettings2.disallow_limited_stargifts, false, false));
                        i4++;
                    }
                    int i7 = this.selectedTab;
                    arrayList.add(GiftCell.Factory.asStarGift(i7, tL_stars$StarGift3, i7 == this.TAB_MY_GIFTS, tL_stars$StarGift3.limited && (disallowedGiftsSettings = this.userSettings) != null && disallowedGiftsSettings.disallow_limited_stargifts, true, false));
                    i4++;
                }
            }
            int i8 = this.selectedTab;
            int i9 = this.TAB_MY_GIFTS;
            if (i8 != i9 || (giftsList = this.myGifts) == null || giftsList.endReached) {
                i = 34;
                if (i8 != i9 && starsController.giftsLoading) {
                }
                iDp = AndroidUtilities.dp(i4 >= 9 ? 300.0f : 40.0f);
            } else {
                giftsList.load();
                i = 34;
            }
            arrayList.add(UItem.asFlicker(4, i).setSpanCount(1));
            arrayList.add(UItem.asFlicker(5, i).setSpanCount(1));
            arrayList.add(UItem.asFlicker(6, i).setSpanCount(1));
            iDp = AndroidUtilities.dp(i4 >= 9 ? 300.0f : 40.0f);
        }
        arrayList.add(UItem.asSpace(iDp));
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return this.self ? LocaleController.getString(R.string.Gift2TitleSelf1) : Emoji.replaceEmoji(LocaleController.formatString(R.string.Gift2User, this.name), null, false);
    }

    public GiftSheet setBirthday() {
        return setBirthday(true);
    }

    public GiftSheet setBirthday(boolean z) {
        this.birthday = z;
        this.adapter.update(false);
        return this;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings = this.userSettings;
        if (disallowedGiftsSettings == null || !disallowedGiftsSettings.disallow_premium_gifts || !disallowedGiftsSettings.disallow_unique_stargifts || !disallowedGiftsSettings.disallow_limited_stargifts || !disallowedGiftsSettings.disallow_unlimited_stargifts) {
            super.show();
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            BulletinFactory.of(safeLastFragment).createSimpleBulletin(R.raw.error, AndroidUtilities.replaceTags(LocaleController.formatString(R.string.UserDisallowedGifts, DialogObject.getShortName(this.dialogId)))).show();
        }
    }
}

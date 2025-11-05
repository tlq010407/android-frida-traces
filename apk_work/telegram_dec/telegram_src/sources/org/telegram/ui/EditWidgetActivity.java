package org.telegram.ui;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatsWidgetProvider;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.ContactsWidgetProvider;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.GroupCreateUserCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackgroundGradientDrawable;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.ForegroundColorSpanThemable;
import org.telegram.ui.Components.InviteMembersBottomSheet;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.RecyclerListView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes4.dex */
public class EditWidgetActivity extends BaseFragment {
    private int chatsEndRow;
    private int chatsStartRow;
    private int currentWidgetId;
    private EditWidgetActivityDelegate delegate;
    private int infoRow;
    private ItemTouchHelper itemTouchHelper;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private ImageView previewImageView;
    private int previewRow;
    private int rowCount;
    private int selectChatsRow;
    private ArrayList selectedDialogs = new ArrayList();
    private WidgetPreviewCell widgetPreviewCell;
    private int widgetType;

    /* renamed from: org.telegram.ui.EditWidgetActivity$2, reason: invalid class name */
    class AnonymousClass2 implements RecyclerListView.OnItemLongClickListenerExtended {
        private Rect rect = new Rect();

        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(int i, DialogInterface dialogInterface, int i2) throws Resources.NotFoundException {
            if (i2 == 0) {
                EditWidgetActivity.this.selectedDialogs.remove(i - EditWidgetActivity.this.chatsStartRow);
                EditWidgetActivity.this.updateRows();
                if (EditWidgetActivity.this.widgetPreviewCell != null) {
                    EditWidgetActivity.this.widgetPreviewCell.updateDialogs();
                }
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public boolean onItemClick(View view, final int i, float f, float f2) {
            if (EditWidgetActivity.this.getParentActivity() != null && (view instanceof GroupCreateUserCell)) {
                ((ImageView) view.getTag(R.id.object_tag)).getHitRect(this.rect);
                if (!this.rect.contains((int) f, (int) f2)) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(EditWidgetActivity.this.getParentActivity());
                    builder.setItems(new CharSequence[]{LocaleController.getString(R.string.Delete)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.EditWidgetActivity$2$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) throws Resources.NotFoundException {
                            this.f$0.lambda$onItemClick$0(i, dialogInterface, i2);
                        }
                    });
                    EditWidgetActivity.this.showDialog(builder.create());
                    return true;
                }
            }
            return false;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public void onLongClickRelease() {
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public void onMove(float f, float f2) {
        }
    }

    public interface EditWidgetActivityDelegate {
        void didSelectDialogs(ArrayList arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$0(GroupCreateUserCell groupCreateUserCell, View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            EditWidgetActivity.this.itemTouchHelper.startDrag(EditWidgetActivity.this.listView.getChildViewHolder(groupCreateUserCell));
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return EditWidgetActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == EditWidgetActivity.this.previewRow) {
                return 2;
            }
            if (i == EditWidgetActivity.this.selectChatsRow) {
                return 1;
            }
            return i == EditWidgetActivity.this.infoRow ? 0 : 3;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 1 || itemViewType == 3;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x005e A[PHI: r0
          0x005e: PHI (r0v24 org.telegram.tgnet.TLObject) = (r0v22 org.telegram.tgnet.TLObject), (r0v25 org.telegram.tgnet.TLObject) binds: [B:15:0x005b, B:12:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0101  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) throws Resources.NotFoundException {
            int i2;
            TLObject chat;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i == EditWidgetActivity.this.infoRow) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    if (EditWidgetActivity.this.widgetType != 0) {
                        if (EditWidgetActivity.this.widgetType == 1) {
                            i2 = R.string.EditWidgetContactsInfo;
                        }
                        if (SharedConfig.passcodeHash.length() > 0) {
                            spannableStringBuilder.append((CharSequence) "\n\n").append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(R.string.WidgetPasscode2)));
                        }
                        textInfoPrivacyCell.setText(spannableStringBuilder);
                        return;
                    }
                    i2 = R.string.EditWidgetChatsInfo;
                    spannableStringBuilder.append((CharSequence) LocaleController.getString(i2));
                    if (SharedConfig.passcodeHash.length() > 0) {
                    }
                    textInfoPrivacyCell.setText(spannableStringBuilder);
                    return;
                }
                return;
            }
            if (itemViewType == 1) {
                TextCell textCell = (TextCell) viewHolder.itemView;
                textCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText4);
                Drawable drawable = this.mContext.getResources().getDrawable(R.drawable.poll_add_circle);
                Drawable drawable2 = this.mContext.getResources().getDrawable(R.drawable.poll_add_plus);
                int color = Theme.getColor(Theme.key_switchTrackChecked);
                PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                drawable.setColorFilter(new PorterDuffColorFilter(color, mode));
                drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), mode));
                textCell.setTextAndIcon(LocaleController.getString(R.string.SelectChats), new CombinedDrawable(drawable, drawable2), EditWidgetActivity.this.chatsStartRow != -1);
                textCell.getImageView().setPadding(0, AndroidUtilities.dp(7.0f), 0, 0);
                return;
            }
            if (itemViewType != 3) {
                return;
            }
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
            Long l = (Long) EditWidgetActivity.this.selectedDialogs.get(i - EditWidgetActivity.this.chatsStartRow);
            long jLongValue = l.longValue();
            if (DialogObject.isUserDialog(jLongValue)) {
                chat = EditWidgetActivity.this.getMessagesController().getUser(l);
                if (i == EditWidgetActivity.this.chatsEndRow - 1) {
                    z = false;
                }
            } else {
                chat = EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-jLongValue));
                if (i == EditWidgetActivity.this.chatsEndRow - 1) {
                }
            }
            groupCreateUserCell.setObject(chat, null, null, z);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            FrameLayout frameLayout;
            if (i == 0) {
                FrameLayout textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
                textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                frameLayout = textInfoPrivacyCell;
            } else if (i == 1) {
                FrameLayout textCell = new TextCell(this.mContext);
                textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                frameLayout = textCell;
            } else if (i != 2) {
                final GroupCreateUserCell groupCreateUserCell = new GroupCreateUserCell(this.mContext, 0, 0, false);
                ImageView imageView = new ImageView(this.mContext);
                imageView.setImageResource(R.drawable.list_reorder);
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                groupCreateUserCell.setTag(R.id.object_tag, imageView);
                groupCreateUserCell.addView(imageView, LayoutHelper.createFrame(40, -1.0f, (LocaleController.isRTL ? 3 : 5) | 16, 10.0f, BitmapDescriptorFactory.HUE_RED, 10.0f, BitmapDescriptorFactory.HUE_RED));
                imageView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return this.f$0.lambda$onCreateViewHolder$0(groupCreateUserCell, view, motionEvent);
                    }
                });
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_pinnedIcon), PorterDuff.Mode.MULTIPLY));
                frameLayout = groupCreateUserCell;
            } else {
                frameLayout = EditWidgetActivity.this.widgetPreviewCell = EditWidgetActivity.this.new WidgetPreviewCell(this.mContext);
            }
            return new RecyclerListView.Holder(frameLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 3 || itemViewType == 1) {
                viewHolder.itemView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
        }

        public boolean swapElements(int i, int i2) {
            int i3 = i - EditWidgetActivity.this.chatsStartRow;
            int i4 = i2 - EditWidgetActivity.this.chatsStartRow;
            int i5 = EditWidgetActivity.this.chatsEndRow - EditWidgetActivity.this.chatsStartRow;
            if (i3 < 0 || i4 < 0 || i3 >= i5 || i4 >= i5) {
                return false;
            }
            Long l = (Long) EditWidgetActivity.this.selectedDialogs.get(i3);
            EditWidgetActivity.this.selectedDialogs.set(i3, (Long) EditWidgetActivity.this.selectedDialogs.get(i4));
            EditWidgetActivity.this.selectedDialogs.set(i4, l);
            notifyItemMoved(i, i2);
            return true;
        }
    }

    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        private boolean moved;

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() != 3 ? ItemTouchHelper.Callback.makeMovementFlags(0, 0) : ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
                return false;
            }
            int adapterPosition = viewHolder.getAdapterPosition();
            int adapterPosition2 = viewHolder2.getAdapterPosition();
            if (EditWidgetActivity.this.listAdapter.swapElements(adapterPosition, adapterPosition2)) {
                ((GroupCreateUserCell) viewHolder.itemView).setDrawDivider(adapterPosition2 != EditWidgetActivity.this.chatsEndRow - 1);
                ((GroupCreateUserCell) viewHolder2.itemView).setDrawDivider(adapterPosition != EditWidgetActivity.this.chatsEndRow - 1);
                this.moved = true;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) throws Resources.NotFoundException {
            if (i != 0) {
                EditWidgetActivity.this.listView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
            } else if (this.moved) {
                if (EditWidgetActivity.this.widgetPreviewCell != null) {
                    EditWidgetActivity.this.widgetPreviewCell.updateDialogs();
                }
                this.moved = false;
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }
    }

    public class WidgetPreviewCell extends FrameLayout {
        private Drawable backgroundDrawable;
        private BackgroundGradientDrawable.Disposable backgroundGradientDisposable;
        private RectF bitmapRect;
        private ViewGroup[] cells;
        private Drawable oldBackgroundDrawable;
        private BackgroundGradientDrawable.Disposable oldBackgroundGradientDisposable;
        private Paint roundPaint;
        private Drawable shadowDrawable;

        public WidgetPreviewCell(Context context) throws Resources.NotFoundException {
            ImageView imageView;
            int i;
            super(context);
            this.roundPaint = new Paint(1);
            this.bitmapRect = new RectF();
            this.cells = new ViewGroup[2];
            int i2 = 0;
            setWillNotDraw(false);
            setPadding(0, AndroidUtilities.dp(24.0f), 0, AndroidUtilities.dp(24.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
            ChatActionCell chatActionCell = new ChatActionCell(context);
            chatActionCell.setCustomText(LocaleController.getString(R.string.WidgetPreview));
            linearLayout.addView(chatActionCell, LayoutHelper.createLinear(-2, -2, 17, 0, 0, 0, 4));
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(1);
            linearLayout2.setBackgroundResource(R.drawable.widget_bg);
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 17, 10, 0, 10, 0));
            EditWidgetActivity.this.previewImageView = new ImageView(context);
            if (EditWidgetActivity.this.widgetType != 0) {
                if (EditWidgetActivity.this.widgetType == 1) {
                    while (i2 < 2) {
                        this.cells[i2] = (ViewGroup) EditWidgetActivity.this.getParentActivity().getLayoutInflater().inflate(R.layout.contacts_widget_item, (ViewGroup) null);
                        linearLayout2.addView(this.cells[i2], LayoutHelper.createLinear(160, -2));
                        i2++;
                    }
                    linearLayout2.addView(EditWidgetActivity.this.previewImageView, LayoutHelper.createLinear(160, 160, 17));
                    imageView = EditWidgetActivity.this.previewImageView;
                    i = R.drawable.contacts_widget_preview;
                }
                updateDialogs();
                this.shadowDrawable = Theme.getThemedDrawableByKey(context, R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow);
            }
            while (i2 < 2) {
                this.cells[i2] = (ViewGroup) EditWidgetActivity.this.getParentActivity().getLayoutInflater().inflate(R.layout.shortcut_widget_item, (ViewGroup) null);
                linearLayout2.addView(this.cells[i2], LayoutHelper.createLinear(-1, -2));
                i2++;
            }
            linearLayout2.addView(EditWidgetActivity.this.previewImageView, LayoutHelper.createLinear(218, 160, 17));
            imageView = EditWidgetActivity.this.previewImageView;
            i = R.drawable.chats_widget_preview;
            imageView.setImageResource(i);
            updateDialogs();
            this.shadowDrawable = Theme.getThemedDrawableByKey(context, R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchSetPressed(boolean z) {
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
            if (disposable != null) {
                disposable.dispose();
                this.backgroundGradientDisposable = null;
            }
            BackgroundGradientDrawable.Disposable disposable2 = this.oldBackgroundGradientDisposable;
            if (disposable2 != null) {
                disposable2.dispose();
                this.oldBackgroundGradientDisposable = null;
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Drawable cachedWallpaperNonBlocking = Theme.getCachedWallpaperNonBlocking();
            if (cachedWallpaperNonBlocking != this.backgroundDrawable && cachedWallpaperNonBlocking != null) {
                if (Theme.isAnimatingColor()) {
                    this.oldBackgroundDrawable = this.backgroundDrawable;
                    this.oldBackgroundGradientDisposable = this.backgroundGradientDisposable;
                } else {
                    BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
                    if (disposable != null) {
                        disposable.dispose();
                        this.backgroundGradientDisposable = null;
                    }
                }
                this.backgroundDrawable = cachedWallpaperNonBlocking;
            }
            float themeAnimationValue = ((BaseFragment) EditWidgetActivity.this).parentLayout.getThemeAnimationValue();
            int i = 0;
            while (i < 2) {
                Drawable drawable = i == 0 ? this.oldBackgroundDrawable : this.backgroundDrawable;
                if (drawable != null) {
                    drawable.setAlpha((i != 1 || this.oldBackgroundDrawable == null || ((BaseFragment) EditWidgetActivity.this).parentLayout == null) ? 255 : (int) (255.0f * themeAnimationValue));
                    if ((drawable instanceof ColorDrawable) || (drawable instanceof GradientDrawable) || (drawable instanceof MotionBackgroundDrawable)) {
                        drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                        if (drawable instanceof BackgroundGradientDrawable) {
                            this.backgroundGradientDisposable = ((BackgroundGradientDrawable) drawable).drawExactBoundsSize(canvas, this);
                        } else {
                            drawable.draw(canvas);
                        }
                    } else if (drawable instanceof BitmapDrawable) {
                        if (((BitmapDrawable) drawable).getTileModeX() == Shader.TileMode.REPEAT) {
                            canvas.save();
                            float f = 2.0f / AndroidUtilities.density;
                            canvas.scale(f, f);
                            drawable.setBounds(0, 0, (int) Math.ceil(getMeasuredWidth() / f), (int) Math.ceil(getMeasuredHeight() / f));
                        } else {
                            int measuredHeight = getMeasuredHeight();
                            float fMax = Math.max(getMeasuredWidth() / drawable.getIntrinsicWidth(), measuredHeight / drawable.getIntrinsicHeight());
                            int iCeil = (int) Math.ceil(drawable.getIntrinsicWidth() * fMax);
                            int iCeil2 = (int) Math.ceil(drawable.getIntrinsicHeight() * fMax);
                            int measuredWidth = (getMeasuredWidth() - iCeil) / 2;
                            int i2 = (measuredHeight - iCeil2) / 2;
                            canvas.save();
                            canvas.clipRect(0, 0, iCeil, getMeasuredHeight());
                            drawable.setBounds(measuredWidth, i2, iCeil + measuredWidth, iCeil2 + i2);
                        }
                        drawable.draw(canvas);
                        canvas.restore();
                    }
                    if (i == 0 && this.oldBackgroundDrawable != null && themeAnimationValue >= 1.0f) {
                        BackgroundGradientDrawable.Disposable disposable2 = this.oldBackgroundGradientDisposable;
                        if (disposable2 != null) {
                            disposable2.dispose();
                            this.oldBackgroundGradientDisposable = null;
                        }
                        this.oldBackgroundDrawable = null;
                        invalidate();
                    }
                }
                i++;
            }
            this.shadowDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.shadowDrawable.draw(canvas);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(264.0f), 1073741824));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:156|(1:158)(2:160|(1:162)(7:163|(1:165)(1:166)|167|413|168|403|180))|159|167|413|168|403|180) */
        /* JADX WARN: Code restructure failed: missing block: B:170:0x03c2, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:171:0x03c3, code lost:
        
            org.telegram.messenger.FileLog.e(r0);
            r5 = r5;
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x027c  */
        /* JADX WARN: Removed duplicated region for block: B:331:0x0791  */
        /* JADX WARN: Removed duplicated region for block: B:332:0x0794  */
        /* JADX WARN: Removed duplicated region for block: B:339:0x07c0  */
        /* JADX WARN: Removed duplicated region for block: B:342:0x07d7  */
        /* JADX WARN: Removed duplicated region for block: B:359:0x0813 A[Catch: all -> 0x080f, TRY_LEAVE, TryCatch #7 {all -> 0x080f, blocks: (B:356:0x0806, B:355:0x0800, B:359:0x0813), top: B:417:0x0806 }] */
        /* JADX WARN: Removed duplicated region for block: B:365:0x085c A[Catch: all -> 0x085f, TryCatch #6 {all -> 0x085f, blocks: (B:363:0x0853, B:365:0x085c, B:369:0x0863, B:368:0x0861), top: B:415:0x0853 }] */
        /* JADX WARN: Removed duplicated region for block: B:368:0x0861 A[Catch: all -> 0x085f, TryCatch #6 {all -> 0x085f, blocks: (B:363:0x0853, B:365:0x085c, B:369:0x0863, B:368:0x0861), top: B:415:0x0853 }] */
        /* JADX WARN: Removed duplicated region for block: B:376:0x0876  */
        /* JADX WARN: Removed duplicated region for block: B:390:0x08c2  */
        /* JADX WARN: Removed duplicated region for block: B:407:0x07a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void updateDialogs() throws Resources.NotFoundException {
            TLRPC.Dialog dialog;
            TLRPC.TL_dialog tL_dialog;
            long jLongValue;
            TLRPC.Dialog dialog2;
            String firstName;
            TLRPC.Chat chat;
            TLRPC.FileLocation fileLocation;
            TLRPC.User user;
            TLRPC.FileLocation fileLocation2;
            TLRPC.FileLocation fileLocation3;
            TLRPC.Chat chat2;
            TLRPC.User user2;
            Bitmap bitmapDecodeFile;
            int i;
            View viewFindViewById;
            int i2;
            int i3;
            Bitmap bitmap;
            AvatarDrawable avatarDrawable;
            int i4;
            TLRPC.UserProfilePhoto userProfilePhoto;
            TLRPC.FileLocation fileLocation4;
            ImageView imageView;
            TLRPC.Dialog tL_dialog2;
            TLRPC.Dialog dialog3;
            TLRPC.Chat chat3;
            String name;
            TLRPC.User user3;
            TLRPC.FileLocation fileLocation5;
            Bitmap bitmapDecodeFile2;
            int i5;
            View viewFindViewById2;
            int i6;
            TLRPC.Chat chat4;
            TLRPC.User user4;
            CharSequence charSequence;
            int i7;
            SpannableStringBuilder spannableStringBuilderValueOf;
            char c;
            String str;
            char c2;
            char c3;
            int i8;
            String string;
            SpannableStringBuilder spannableStringBuilder;
            CharSequence string2;
            CharSequence charSequence2;
            AvatarDrawable avatarDrawable2;
            int i9;
            TLRPC.UserProfilePhoto userProfilePhoto2;
            TLRPC.FileLocation fileLocation6;
            int i10 = 8;
            long j = 0;
            int i11 = 2;
            int i12 = 0;
            if (EditWidgetActivity.this.widgetType == 0) {
                int i13 = 0;
                while (i13 < i11) {
                    if (EditWidgetActivity.this.selectedDialogs.isEmpty()) {
                        if (i13 < EditWidgetActivity.this.getMessagesController().dialogsServerOnly.size()) {
                            tL_dialog2 = EditWidgetActivity.this.getMessagesController().dialogsServerOnly.get(i13);
                            dialog3 = tL_dialog2;
                        }
                        dialog3 = null;
                    } else {
                        if (i13 < EditWidgetActivity.this.selectedDialogs.size()) {
                            tL_dialog2 = (TLRPC.Dialog) EditWidgetActivity.this.getMessagesController().dialogs_dict.get(((Long) EditWidgetActivity.this.selectedDialogs.get(i13)).longValue());
                            if (tL_dialog2 == null) {
                                tL_dialog2 = new TLRPC.TL_dialog();
                                tL_dialog2.id = ((Long) EditWidgetActivity.this.selectedDialogs.get(i13)).longValue();
                            }
                            dialog3 = tL_dialog2;
                        }
                        dialog3 = null;
                    }
                    ViewGroup[] viewGroupArr = this.cells;
                    if (dialog3 == null) {
                        viewGroupArr[i13].setVisibility(i10);
                        i5 = i13;
                    } else {
                        viewGroupArr[i13].setVisibility(i12);
                        if (DialogObject.isUserDialog(dialog3.id)) {
                            user3 = EditWidgetActivity.this.getMessagesController().getUser(Long.valueOf(dialog3.id));
                            if (user3 != null) {
                                if (UserObject.isUserSelf(user3)) {
                                    i9 = R.string.SavedMessages;
                                } else if (UserObject.isReplyUser(user3)) {
                                    i9 = R.string.RepliesTitle;
                                } else if (UserObject.isDeleted(user3)) {
                                    i9 = R.string.HiddenName;
                                } else {
                                    name = ContactsController.formatName(user3.first_name, user3.last_name);
                                    if (UserObject.isReplyUser(user3) && !UserObject.isUserSelf(user3) && (userProfilePhoto2 = user3.photo) != null && (fileLocation6 = userProfilePhoto2.photo_small) != null && fileLocation6.volume_id != j && fileLocation6.local_id != 0) {
                                        fileLocation5 = fileLocation6;
                                    }
                                    chat3 = null;
                                }
                                name = LocaleController.getString(i9);
                                if (UserObject.isReplyUser(user3)) {
                                }
                            } else {
                                name = "";
                            }
                            fileLocation5 = null;
                            chat3 = null;
                        } else {
                            TLRPC.Chat chat5 = EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-dialog3.id));
                            if (chat5 != null) {
                                name = chat5.title;
                                TLRPC.ChatPhoto chatPhoto = chat5.photo;
                                if (chatPhoto == null || (fileLocation5 = chatPhoto.photo_small) == null || fileLocation5.volume_id == j || fileLocation5.local_id == 0) {
                                    chat3 = chat5;
                                } else {
                                    chat3 = chat5;
                                    user3 = null;
                                }
                            } else {
                                chat3 = chat5;
                                name = "";
                            }
                            user3 = null;
                            fileLocation5 = null;
                        }
                        ((TextView) this.cells[i13].findViewById(R.id.shortcut_widget_item_text)).setText(name);
                        if (fileLocation5 != null) {
                            try {
                                bitmapDecodeFile2 = BitmapFactory.decodeFile(EditWidgetActivity.this.getFileLoader().getPathToAttach(fileLocation5, true).toString());
                            } catch (Throwable th) {
                                FileLog.e(th);
                            }
                        } else {
                            bitmapDecodeFile2 = null;
                        }
                        int iDp = AndroidUtilities.dp(48.0f);
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iDp, iDp, Bitmap.Config.ARGB_8888);
                        bitmapCreateBitmap.eraseColor(0);
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        if (bitmapDecodeFile2 == null) {
                            if (user3 != null) {
                                avatarDrawable2 = new AvatarDrawable(user3);
                                if (UserObject.isReplyUser(user3)) {
                                    avatarDrawable2.setAvatarType(12);
                                } else if (UserObject.isUserSelf(user3)) {
                                    avatarDrawable2.setAvatarType(1);
                                }
                            } else {
                                avatarDrawable2 = new AvatarDrawable(chat3);
                            }
                            avatarDrawable2.setBounds(0, 0, iDp, iDp);
                            avatarDrawable2.draw(canvas);
                        } else {
                            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                            BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile2, tileMode, tileMode);
                            if (this.roundPaint == null) {
                                this.roundPaint = new Paint(1);
                                this.bitmapRect = new RectF();
                            }
                            float width = iDp / bitmapDecodeFile2.getWidth();
                            canvas.save();
                            canvas.scale(width, width);
                            this.roundPaint.setShader(bitmapShader);
                            this.bitmapRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmapDecodeFile2.getWidth(), bitmapDecodeFile2.getHeight());
                            canvas.drawRoundRect(this.bitmapRect, bitmapDecodeFile2.getWidth(), bitmapDecodeFile2.getHeight(), this.roundPaint);
                            canvas.restore();
                        }
                        canvas.setBitmap(null);
                        ((ImageView) this.cells[i13].findViewById(R.id.shortcut_widget_item_avatar)).setImageBitmap(bitmapCreateBitmap);
                        ArrayList arrayList = (ArrayList) EditWidgetActivity.this.getMessagesController().dialogMessage.get(dialog3.id);
                        MessageObject messageObject = (arrayList == null || arrayList.size() <= 0) ? null : (MessageObject) arrayList.get(0);
                        if (messageObject != null) {
                            long fromChatId = messageObject.getFromChatId();
                            if (fromChatId > j) {
                                user4 = EditWidgetActivity.this.getMessagesController().getUser(Long.valueOf(fromChatId));
                                chat4 = null;
                            } else {
                                chat4 = EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-fromChatId));
                                user4 = null;
                            }
                            int color = getContext().getResources().getColor(R.color.widget_text);
                            if (!(messageObject.messageOwner instanceof TLRPC.TL_messageService)) {
                                i5 = i13;
                                if (chat3 == null || chat3.id <= j || chat4 != null || (ChatObject.isChannel(chat3) && !ChatObject.isMegagroup(chat3))) {
                                    TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                                    if ((messageMedia instanceof TLRPC.TL_messageMediaPhoto) && (messageMedia.photo instanceof TLRPC.TL_photoEmpty) && messageMedia.ttl_seconds != 0) {
                                        i7 = R.string.AttachPhotoExpired;
                                    } else if ((messageMedia instanceof TLRPC.TL_messageMediaDocument) && (messageMedia.document instanceof TLRPC.TL_documentEmpty) && messageMedia.ttl_seconds != 0) {
                                        i7 = R.string.AttachVideoExpired;
                                    } else if (messageObject.caption != null) {
                                        string2 = (messageObject.isVideo() ? "📹 " : messageObject.isVoice() ? "🎤 " : messageObject.isMusic() ? "🎧 " : messageObject.isPhoto() ? "🖼 " : "📎 ") + ((Object) messageObject.caption);
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
                                        CharSequence charSequence3 = charSequence;
                                        string2 = charSequence3;
                                        if (messageObject.messageOwner.media != null) {
                                            charSequence2 = charSequence3;
                                            string2 = charSequence3;
                                            if (!messageObject.isMediaEmpty()) {
                                            }
                                        }
                                    }
                                    string2 = LocaleController.getString(i7);
                                } else {
                                    String string3 = messageObject.isOutOwner() ? LocaleController.getString(R.string.FromYou) : user4 != null ? UserObject.getFirstName(user4).replace("\n", "") : "DELETED";
                                    CharSequence charSequence4 = messageObject.caption;
                                    try {
                                        if (charSequence4 != null) {
                                            String string4 = charSequence4.toString();
                                            if (string4.length() > 150) {
                                                string4 = string4.substring(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                                            }
                                            str = String.format("%2$s: \u2068%1$s\u2069", (messageObject.isVideo() ? "📹 " : messageObject.isVoice() ? "🎤 " : messageObject.isMusic() ? "🎧 " : messageObject.isPhoto() ? "🖼 " : "📎 ") + string4.replace('\n', ' '), string3);
                                        } else if (messageObject.messageOwner.media == null || messageObject.isMediaEmpty()) {
                                            String strSubstring = messageObject.messageOwner.message;
                                            if (strSubstring != null) {
                                                if (strSubstring.length() > 150) {
                                                    c = 0;
                                                    strSubstring = strSubstring.substring(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                                                } else {
                                                    c = 0;
                                                }
                                                Object[] objArr = new Object[2];
                                                objArr[c] = strSubstring.replace('\n', ' ').trim();
                                                objArr[1] = string3;
                                                str = String.format("%2$s: \u2068%1$s\u2069", objArr);
                                            } else {
                                                spannableStringBuilderValueOf = SpannableStringBuilder.valueOf("");
                                                spannableStringBuilder = spannableStringBuilderValueOf;
                                                spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, string3.length() + 1, 33);
                                                string2 = spannableStringBuilder;
                                            }
                                        } else {
                                            color = getContext().getResources().getColor(R.color.widget_action_text);
                                            TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
                                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                                                c2 = 1;
                                                c3 = 0;
                                                string = String.format("📊 \u2068%s\u2069", ((TLRPC.TL_messageMediaPoll) messageMedia2).poll.question.text);
                                            } else {
                                                c2 = 1;
                                                c3 = 0;
                                                if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                                                    string = String.format("🎮 \u2068%s\u2069", messageMedia2.game.title);
                                                } else {
                                                    if (messageObject.type == 14) {
                                                        i8 = 2;
                                                        string = String.format("🎧 \u2068%s - %s\u2069", messageObject.getMusicAuthor(), messageObject.getMusicTitle());
                                                    } else {
                                                        i8 = 2;
                                                        string = messageObject.messageText.toString();
                                                    }
                                                    String strReplace = string.replace('\n', ' ');
                                                    Object[] objArr2 = new Object[i8];
                                                    objArr2[c3] = strReplace;
                                                    objArr2[c2] = string3;
                                                    SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr2));
                                                    spannableStringBuilderValueOf2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage), string3.length() + 2, spannableStringBuilderValueOf2.length(), 33);
                                                    spannableStringBuilder = spannableStringBuilderValueOf2;
                                                    spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage), 0, string3.length() + 1, 33);
                                                    string2 = spannableStringBuilder;
                                                }
                                            }
                                            i8 = 2;
                                            String strReplace2 = string.replace('\n', ' ');
                                            Object[] objArr22 = new Object[i8];
                                            objArr22[c3] = strReplace2;
                                            objArr22[c2] = string3;
                                            SpannableStringBuilder spannableStringBuilderValueOf22 = SpannableStringBuilder.valueOf(String.format("%2$s: \u2068%1$s\u2069", objArr22));
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
                                    spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(str);
                                    spannableStringBuilder = spannableStringBuilderValueOf;
                                }
                                ((TextView) this.cells[i5].findViewById(R.id.shortcut_widget_item_time)).setText(LocaleController.stringForMessageListDate(messageObject.messageOwner.date));
                                ViewGroup viewGroup = this.cells[i5];
                                int i14 = R.id.shortcut_widget_item_message;
                                ((TextView) viewGroup.findViewById(i14)).setText(string2.toString());
                                ((TextView) this.cells[i5].findViewById(i14)).setTextColor(color);
                            } else if (ChatObject.isChannel(chat3)) {
                                TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                                CharSequence charSequence5 = "";
                                if (!(messageAction instanceof TLRPC.TL_messageActionHistoryClear)) {
                                    charSequence5 = "";
                                    if (!(messageAction instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                                        charSequence5 = messageObject.messageText;
                                    }
                                }
                                i5 = i13;
                                charSequence2 = charSequence5;
                            }
                            color = getContext().getResources().getColor(R.color.widget_action_text);
                            string2 = charSequence2;
                            ((TextView) this.cells[i5].findViewById(R.id.shortcut_widget_item_time)).setText(LocaleController.stringForMessageListDate(messageObject.messageOwner.date));
                            ViewGroup viewGroup2 = this.cells[i5];
                            int i142 = R.id.shortcut_widget_item_message;
                            ((TextView) viewGroup2.findViewById(i142)).setText(string2.toString());
                            ((TextView) this.cells[i5].findViewById(i142)).setTextColor(color);
                        } else {
                            i5 = i13;
                            if (dialog3.last_message_date != 0) {
                                ((TextView) this.cells[i5].findViewById(R.id.shortcut_widget_item_time)).setText(LocaleController.stringForMessageListDate(dialog3.last_message_date));
                            } else {
                                ((TextView) this.cells[i5].findViewById(R.id.shortcut_widget_item_time)).setText("");
                            }
                            ((TextView) this.cells[i5].findViewById(R.id.shortcut_widget_item_message)).setText("");
                        }
                        if (dialog3.unread_count > 0) {
                            ViewGroup viewGroup3 = this.cells[i5];
                            int i15 = R.id.shortcut_widget_item_badge;
                            ((TextView) viewGroup3.findViewById(i15)).setText(String.format("%d", Integer.valueOf(dialog3.unread_count)));
                            this.cells[i5].findViewById(i15).setVisibility(0);
                            if (EditWidgetActivity.this.getMessagesController().isDialogMuted(dialog3.id, 0L)) {
                                viewFindViewById2 = this.cells[i5].findViewById(i15);
                                i6 = R.drawable.widget_counter_muted;
                            } else {
                                viewFindViewById2 = this.cells[i5].findViewById(i15);
                                i6 = R.drawable.widget_counter;
                            }
                            viewFindViewById2.setBackgroundResource(i6);
                        } else {
                            this.cells[i5].findViewById(R.id.shortcut_widget_item_badge).setVisibility(8);
                        }
                    }
                    i13 = i5 + 1;
                    i10 = 8;
                    j = 0;
                    i11 = 2;
                    i12 = 0;
                }
                ViewGroup viewGroup4 = this.cells[0];
                int i16 = R.id.shortcut_widget_item_divider;
                viewGroup4.findViewById(i16).setVisibility(this.cells[1].getVisibility());
                this.cells[1].findViewById(i16).setVisibility(8);
            } else if (EditWidgetActivity.this.widgetType == 1) {
                int i17 = 2;
                int i18 = 0;
                while (i18 < i17) {
                    int i19 = 0;
                    while (i19 < i17) {
                        int i20 = (i18 * 2) + i19;
                        if (EditWidgetActivity.this.selectedDialogs.isEmpty()) {
                            if (i20 < EditWidgetActivity.this.getMediaDataController().hints.size()) {
                                jLongValue = EditWidgetActivity.this.getMediaDataController().hints.get(i20).peer.user_id;
                                dialog = (TLRPC.Dialog) EditWidgetActivity.this.getMessagesController().dialogs_dict.get(jLongValue);
                                if (dialog == null) {
                                    tL_dialog = new TLRPC.TL_dialog();
                                    tL_dialog.id = jLongValue;
                                    dialog2 = tL_dialog;
                                }
                                dialog2 = dialog;
                            }
                            dialog2 = null;
                        } else {
                            if (i20 < EditWidgetActivity.this.selectedDialogs.size()) {
                                dialog = (TLRPC.Dialog) EditWidgetActivity.this.getMessagesController().dialogs_dict.get(((Long) EditWidgetActivity.this.selectedDialogs.get(i20)).longValue());
                                if (dialog == null) {
                                    tL_dialog = new TLRPC.TL_dialog();
                                    jLongValue = ((Long) EditWidgetActivity.this.selectedDialogs.get(i20)).longValue();
                                    tL_dialog.id = jLongValue;
                                    dialog2 = tL_dialog;
                                }
                                dialog2 = dialog;
                            }
                            dialog2 = null;
                        }
                        ViewGroup[] viewGroupArr2 = this.cells;
                        if (dialog2 == null) {
                            viewGroupArr2[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item1 : R.id.contacts_widget_item2).setVisibility(4);
                            if (i20 == 0 || i20 == 2) {
                                this.cells[i18].setVisibility(8);
                            }
                            i3 = 1;
                        } else {
                            viewGroupArr2[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item1 : R.id.contacts_widget_item2).setVisibility(0);
                            if (i20 == 0 || i20 == 2) {
                                this.cells[i18].setVisibility(0);
                            }
                            if (DialogObject.isUserDialog(dialog2.id)) {
                                user2 = EditWidgetActivity.this.getMessagesController().getUser(Long.valueOf(dialog2.id));
                                if (UserObject.isUserSelf(user2)) {
                                    i4 = R.string.SavedMessages;
                                } else if (UserObject.isReplyUser(user2)) {
                                    i4 = R.string.RepliesTitle;
                                } else if (UserObject.isDeleted(user2)) {
                                    i4 = R.string.HiddenName;
                                } else {
                                    firstName = UserObject.getFirstName(user2);
                                    if (!UserObject.isReplyUser(user2) || UserObject.isUserSelf(user2) || user2 == null || (userProfilePhoto = user2.photo) == null || (fileLocation4 = userProfilePhoto.photo_small) == null || fileLocation4.volume_id == 0 || fileLocation4.local_id == 0) {
                                        user = user2;
                                        fileLocation = null;
                                        chat = null;
                                        ((TextView) this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_text1 : R.id.contacts_widget_item_text2)).setText(firstName);
                                        if (fileLocation != null) {
                                            try {
                                                bitmapDecodeFile = BitmapFactory.decodeFile(EditWidgetActivity.this.getFileLoader().getPathToAttach(fileLocation, true).toString());
                                            } catch (Throwable th2) {
                                                th = th2;
                                                FileLog.e(th);
                                                i = dialog2.unread_count;
                                                if (i > 0) {
                                                }
                                                viewFindViewById.setVisibility(i2);
                                                i3 = 1;
                                                i19 += i3;
                                                i17 = 2;
                                            }
                                        } else {
                                            bitmapDecodeFile = null;
                                        }
                                        int iDp2 = AndroidUtilities.dp(48.0f);
                                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iDp2, iDp2, Bitmap.Config.ARGB_8888);
                                        bitmapCreateBitmap2.eraseColor(0);
                                        Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                                        if (bitmapDecodeFile == null) {
                                            if (user != null) {
                                                try {
                                                    avatarDrawable = new AvatarDrawable(user);
                                                    if (UserObject.isReplyUser(user)) {
                                                        avatarDrawable.setAvatarType(12);
                                                    } else if (UserObject.isUserSelf(user)) {
                                                        avatarDrawable.setAvatarType(1);
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    FileLog.e(th);
                                                    i = dialog2.unread_count;
                                                    if (i > 0) {
                                                    }
                                                    viewFindViewById.setVisibility(i2);
                                                    i3 = 1;
                                                    i19 += i3;
                                                    i17 = 2;
                                                }
                                            } else {
                                                avatarDrawable = new AvatarDrawable(chat);
                                            }
                                            try {
                                                avatarDrawable.setBounds(0, 0, iDp2, iDp2);
                                                avatarDrawable.draw(canvas2);
                                                bitmap = null;
                                                try {
                                                    canvas2.setBitmap(bitmap);
                                                    ((ImageView) this.cells[i18].findViewById(i19 != 0 ? R.id.contacts_widget_item_avatar1 : R.id.contacts_widget_item_avatar2)).setImageBitmap(bitmapCreateBitmap2);
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    FileLog.e(th);
                                                    i = dialog2.unread_count;
                                                    if (i > 0) {
                                                    }
                                                    viewFindViewById.setVisibility(i2);
                                                    i3 = 1;
                                                    i19 += i3;
                                                    i17 = 2;
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                                FileLog.e(th);
                                                i = dialog2.unread_count;
                                                if (i > 0) {
                                                }
                                                viewFindViewById.setVisibility(i2);
                                                i3 = 1;
                                                i19 += i3;
                                                i17 = 2;
                                            }
                                            i = dialog2.unread_count;
                                            if (i > 0) {
                                                ((TextView) this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_badge1 : R.id.contacts_widget_item_badge2)).setText(i > 99 ? String.format("%d+", 99) : String.format("%d", Integer.valueOf(i)));
                                                viewFindViewById = this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_badge_bg1 : R.id.contacts_widget_item_badge_bg2);
                                                i2 = 0;
                                            } else {
                                                viewFindViewById = this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_badge_bg1 : R.id.contacts_widget_item_badge_bg2);
                                                i2 = 8;
                                            }
                                            viewFindViewById.setVisibility(i2);
                                            i3 = 1;
                                        } else {
                                            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
                                            BitmapShader bitmapShader2 = new BitmapShader(bitmapDecodeFile, tileMode2, tileMode2);
                                            float width2 = iDp2 / bitmapDecodeFile.getWidth();
                                            canvas2.save();
                                            canvas2.scale(width2, width2);
                                            this.roundPaint.setShader(bitmapShader2);
                                            try {
                                                this.bitmapRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                                canvas2.drawRoundRect(this.bitmapRect, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), this.roundPaint);
                                                canvas2.restore();
                                                bitmap = null;
                                                canvas2.setBitmap(bitmap);
                                                ((ImageView) this.cells[i18].findViewById(i19 != 0 ? R.id.contacts_widget_item_avatar1 : R.id.contacts_widget_item_avatar2)).setImageBitmap(bitmapCreateBitmap2);
                                            } catch (Throwable th6) {
                                                th = th6;
                                                FileLog.e(th);
                                                i = dialog2.unread_count;
                                                if (i > 0) {
                                                }
                                                viewFindViewById.setVisibility(i2);
                                                i3 = 1;
                                                i19 += i3;
                                                i17 = 2;
                                            }
                                            i = dialog2.unread_count;
                                            if (i > 0) {
                                            }
                                            viewFindViewById.setVisibility(i2);
                                            i3 = 1;
                                        }
                                    } else {
                                        fileLocation3 = fileLocation4;
                                        chat2 = null;
                                        chat = chat2;
                                        user = user2;
                                        fileLocation = fileLocation3;
                                        ((TextView) this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_text1 : R.id.contacts_widget_item_text2)).setText(firstName);
                                        if (fileLocation != null) {
                                        }
                                        int iDp22 = AndroidUtilities.dp(48.0f);
                                        Bitmap bitmapCreateBitmap22 = Bitmap.createBitmap(iDp22, iDp22, Bitmap.Config.ARGB_8888);
                                        bitmapCreateBitmap22.eraseColor(0);
                                        Canvas canvas22 = new Canvas(bitmapCreateBitmap22);
                                        if (bitmapDecodeFile == null) {
                                        }
                                    }
                                }
                                firstName = LocaleController.getString(i4);
                                if (UserObject.isReplyUser(user2)) {
                                }
                                user = user2;
                                fileLocation = null;
                                chat = null;
                                ((TextView) this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_text1 : R.id.contacts_widget_item_text2)).setText(firstName);
                                if (fileLocation != null) {
                                }
                                int iDp222 = AndroidUtilities.dp(48.0f);
                                Bitmap bitmapCreateBitmap222 = Bitmap.createBitmap(iDp222, iDp222, Bitmap.Config.ARGB_8888);
                                bitmapCreateBitmap222.eraseColor(0);
                                Canvas canvas222 = new Canvas(bitmapCreateBitmap222);
                                if (bitmapDecodeFile == null) {
                                }
                            } else {
                                TLRPC.Chat chat6 = EditWidgetActivity.this.getMessagesController().getChat(Long.valueOf(-dialog2.id));
                                firstName = chat6.title;
                                TLRPC.ChatPhoto chatPhoto2 = chat6.photo;
                                if (chatPhoto2 != null && (fileLocation2 = chatPhoto2.photo_small) != null) {
                                    if (fileLocation2.volume_id != 0 && fileLocation2.local_id != 0) {
                                        fileLocation3 = fileLocation2;
                                        chat2 = chat6;
                                        user2 = null;
                                        chat = chat2;
                                        user = user2;
                                        fileLocation = fileLocation3;
                                        ((TextView) this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_text1 : R.id.contacts_widget_item_text2)).setText(firstName);
                                        if (fileLocation != null) {
                                        }
                                        int iDp2222 = AndroidUtilities.dp(48.0f);
                                        Bitmap bitmapCreateBitmap2222 = Bitmap.createBitmap(iDp2222, iDp2222, Bitmap.Config.ARGB_8888);
                                        bitmapCreateBitmap2222.eraseColor(0);
                                        Canvas canvas2222 = new Canvas(bitmapCreateBitmap2222);
                                        if (bitmapDecodeFile == null) {
                                        }
                                    }
                                }
                                chat = chat6;
                                fileLocation = null;
                                user = null;
                                ((TextView) this.cells[i18].findViewById(i19 == 0 ? R.id.contacts_widget_item_text1 : R.id.contacts_widget_item_text2)).setText(firstName);
                                if (fileLocation != null) {
                                }
                                int iDp22222 = AndroidUtilities.dp(48.0f);
                                Bitmap bitmapCreateBitmap22222 = Bitmap.createBitmap(iDp22222, iDp22222, Bitmap.Config.ARGB_8888);
                                bitmapCreateBitmap22222.eraseColor(0);
                                Canvas canvas22222 = new Canvas(bitmapCreateBitmap22222);
                                if (bitmapDecodeFile == null) {
                                }
                            }
                        }
                        i19 += i3;
                        i17 = 2;
                    }
                    i18++;
                    i17 = 2;
                }
            }
            int i21 = 0;
            if (this.cells[0].getVisibility() == 0) {
                imageView = EditWidgetActivity.this.previewImageView;
                i21 = 8;
            } else {
                imageView = EditWidgetActivity.this.previewImageView;
            }
            imageView.setVisibility(i21);
        }
    }

    public EditWidgetActivity(int i, int i2) throws InterruptedException {
        this.widgetType = i;
        this.currentWidgetId = i2;
        ArrayList<TLRPC.User> arrayList = new ArrayList<>();
        ArrayList<TLRPC.Chat> arrayList2 = new ArrayList<>();
        getMessagesStorage().getWidgetDialogIds(this.currentWidgetId, this.widgetType, this.selectedDialogs, arrayList, arrayList2, true);
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        updateRows();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishActivity() {
        if (getParentActivity() == null) {
            return;
        }
        getParentActivity().finish();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.EditWidgetActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.removeSelfFromStack();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(ArrayList arrayList) throws Resources.NotFoundException {
        this.selectedDialogs.clear();
        this.selectedDialogs.addAll(arrayList);
        updateRows();
        WidgetPreviewCell widgetPreviewCell = this.widgetPreviewCell;
        if (widgetPreviewCell != null) {
            widgetPreviewCell.updateDialogs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(Context context, View view, int i) {
        if (i == this.selectChatsRow) {
            InviteMembersBottomSheet inviteMembersBottomSheet = new InviteMembersBottomSheet(context, this.currentAccount, null, 0L, this, null);
            inviteMembersBottomSheet.setDelegate(new InviteMembersBottomSheet.InviteMembersBottomSheetDelegate() { // from class: org.telegram.ui.EditWidgetActivity$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.Components.InviteMembersBottomSheet.InviteMembersBottomSheetDelegate
                public final void didSelectDialogs(ArrayList arrayList) throws Resources.NotFoundException {
                    this.f$0.lambda$createView$0(arrayList);
                }
            }, this.selectedDialogs);
            inviteMembersBottomSheet.setSelectedContacts(this.selectedDialogs);
            showDialog(inviteMembersBottomSheet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows() {
        int size;
        this.previewRow = 0;
        this.rowCount = 2;
        this.selectChatsRow = 1;
        if (this.selectedDialogs.isEmpty()) {
            size = -1;
            this.chatsStartRow = -1;
        } else {
            int i = this.rowCount;
            this.chatsStartRow = i;
            size = i + this.selectedDialogs.size();
            this.rowCount = size;
        }
        this.chatsEndRow = size;
        int i2 = this.rowCount;
        this.rowCount = i2 + 1;
        this.infoRow = i2;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        ActionBar actionBar;
        int i;
        this.actionBar.setBackButtonImage(R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(false);
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        if (this.widgetType == 0) {
            actionBar = this.actionBar;
            i = R.string.WidgetChats;
        } else {
            actionBar = this.actionBar;
            i = R.string.WidgetShortcuts;
        }
        actionBar.setTitle(LocaleController.getString(i));
        this.actionBar.createMenu().addItem(1, LocaleController.getString(R.string.Done).toUpperCase());
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.EditWidgetActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (EditWidgetActivity.this.delegate == null) {
                        EditWidgetActivity.this.finishActivity();
                        return;
                    } else {
                        EditWidgetActivity.this.lambda$onBackPressed$354();
                        return;
                    }
                }
                if (i2 != 1 || EditWidgetActivity.this.getParentActivity() == null) {
                    return;
                }
                ArrayList<MessagesStorage.TopicKey> arrayList = new ArrayList<>();
                for (int i3 = 0; i3 < EditWidgetActivity.this.selectedDialogs.size(); i3++) {
                    arrayList.add(MessagesStorage.TopicKey.of(((Long) EditWidgetActivity.this.selectedDialogs.get(i3)).longValue(), 0L));
                }
                EditWidgetActivity.this.getMessagesStorage().putWidgetDialogs(EditWidgetActivity.this.currentWidgetId, arrayList);
                SharedPreferences.Editor editorEdit = EditWidgetActivity.this.getParentActivity().getSharedPreferences("shortcut_widget", 0).edit();
                editorEdit.putInt("account" + EditWidgetActivity.this.currentWidgetId, ((BaseFragment) EditWidgetActivity.this).currentAccount);
                editorEdit.putInt("type" + EditWidgetActivity.this.currentWidgetId, EditWidgetActivity.this.widgetType);
                editorEdit.commit();
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(EditWidgetActivity.this.getParentActivity());
                if (EditWidgetActivity.this.widgetType == 0) {
                    ChatsWidgetProvider.updateWidget(EditWidgetActivity.this.getParentActivity(), appWidgetManager, EditWidgetActivity.this.currentWidgetId);
                } else {
                    ContactsWidgetProvider.updateWidget(EditWidgetActivity.this.getParentActivity(), appWidgetManager, EditWidgetActivity.this.currentWidgetId);
                }
                if (EditWidgetActivity.this.delegate != null) {
                    EditWidgetActivity.this.delegate.didSelectDialogs(EditWidgetActivity.this.selectedDialogs);
                } else {
                    EditWidgetActivity.this.finishActivity();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.fragmentView = frameLayout;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setAdapter(this.listAdapter);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new TouchHelperCallback());
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.listView);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.EditWidgetActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$createView$1(context, view, i2);
            }
        });
        this.listView.setOnItemLongClickListener(new AnonymousClass2());
        return this.fragmentView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i3 = Theme.key_windowBackgroundWhiteBlueText4;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        return arrayList;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        if (this.delegate != null) {
            return super.onBackPressed();
        }
        finishActivity();
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        DialogsActivity.loadDialogs(AccountInstance.getInstance(this.currentAccount));
        getMediaDataController().loadHints(true);
        return super.onFragmentCreate();
    }

    public void setDelegate(EditWidgetActivityDelegate editWidgetActivityDelegate) {
        this.delegate = editWidgetActivityDelegate;
    }
}

package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class GroupedPhotosListView extends View implements GestureDetector.OnGestureListener {
    private boolean animateAllLine;
    private boolean animateBackground;
    private int animateToDX;
    private int animateToDXStart;
    private int animateToItem;
    private boolean animateToItemFast;
    private boolean animationsEnabled;
    private Paint backgroundPaint;
    private long currentGroupId;
    private int currentImage;
    private float currentItemProgress;
    private ArrayList currentObjects;
    public ArrayList currentPhotos;
    private GroupedPhotosListViewDelegate delegate;
    private float drawAlpha;
    private int drawDx;
    private GestureDetector gestureDetector;
    private boolean hasPhotos;
    private ValueAnimator hideAnimator;
    private boolean ignoreChanges;
    private ArrayList imagesToDraw;
    private int itemHeight;
    private int itemSpacing;
    private int itemWidth;
    private int itemY;
    private long lastUpdateTime;
    private float moveLineProgress;
    private boolean moving;
    private int nextImage;
    private float nextItemProgress;
    private int nextPhotoScrolling;
    private android.widget.Scroller scroll;
    private boolean scrolling;
    private ValueAnimator showAnimator;
    private boolean stopedScrolling;
    private ArrayList unusedReceivers;

    public interface GroupedPhotosListViewDelegate {
        boolean forceAll();

        long getAvatarsDialogId();

        int getCurrentAccount();

        int getCurrentIndex();

        ArrayList getImagesArr();

        ArrayList getImagesArrLocations();

        List getPageBlockArr();

        Object getParentObject();

        int getSlideshowMessageId();

        void onShowAnimationStart();

        void onStopScrolling();

        void setCurrentIndex(int i);
    }

    public GroupedPhotosListView(Context context, int i) {
        super(context);
        this.backgroundPaint = new Paint();
        this.unusedReceivers = new ArrayList();
        this.imagesToDraw = new ArrayList();
        this.currentPhotos = new ArrayList();
        this.currentObjects = new ArrayList();
        this.currentItemProgress = 1.0f;
        this.nextItemProgress = BitmapDescriptorFactory.HUE_RED;
        this.animateToItem = -1;
        this.animationsEnabled = true;
        this.nextPhotoScrolling = -1;
        this.animateBackground = true;
        this.gestureDetector = new GestureDetector(context, this);
        this.scroll = new android.widget.Scroller(context);
        this.itemWidth = AndroidUtilities.dp(42.0f);
        this.itemHeight = AndroidUtilities.dp(56.0f);
        this.itemSpacing = AndroidUtilities.dp(1.0f);
        this.itemY = i;
        this.backgroundPaint.setColor(2130706432);
    }

    private void fillImages(boolean z, int i) {
        int iMax;
        int iMin;
        Object parentObject;
        Object parentObject2;
        if (!z && !this.imagesToDraw.isEmpty()) {
            this.unusedReceivers.addAll(this.imagesToDraw);
            this.imagesToDraw.clear();
            this.moving = false;
            this.moveLineProgress = 1.0f;
            this.currentItemProgress = 1.0f;
            this.nextItemProgress = BitmapDescriptorFactory.HUE_RED;
        }
        invalidate();
        if (getMeasuredWidth() == 0 || this.currentPhotos.isEmpty()) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (this.itemWidth / 2);
        if (z) {
            int size = this.imagesToDraw.size();
            int i2 = 0;
            iMax = Integer.MIN_VALUE;
            iMin = Integer.MAX_VALUE;
            while (i2 < size) {
                ImageReceiver imageReceiver = (ImageReceiver) this.imagesToDraw.get(i2);
                int param = imageReceiver.getParam();
                int i3 = param - this.currentImage;
                int i4 = this.itemWidth;
                int i5 = (i3 * (this.itemSpacing + i4)) + measuredWidth2 + i;
                if (i5 > measuredWidth || i5 + i4 < 0) {
                    this.unusedReceivers.add(imageReceiver);
                    this.imagesToDraw.remove(i2);
                    size--;
                    i2--;
                }
                iMin = Math.min(iMin, param - 1);
                iMax = Math.max(iMax, param + 1);
                i2++;
            }
        } else {
            iMax = this.currentImage;
            iMin = iMax - 1;
        }
        if (iMax != Integer.MIN_VALUE) {
            int size2 = this.currentPhotos.size();
            while (iMax < size2) {
                int i6 = ((iMax - this.currentImage) * (this.itemWidth + this.itemSpacing)) + measuredWidth2 + i;
                if (i6 >= measuredWidth) {
                    break;
                }
                ImageLocation imageLocation = (ImageLocation) this.currentPhotos.get(iMax);
                ImageReceiver freeReceiver = getFreeReceiver();
                freeReceiver.setImageCoords(i6, this.itemY, this.itemWidth, this.itemHeight);
                if (this.currentObjects.get(0) instanceof MessageObject) {
                    parentObject2 = this.currentObjects.get(iMax);
                } else if (this.currentObjects.get(0) instanceof TLRPC.PageBlock) {
                    parentObject2 = this.delegate.getParentObject();
                } else {
                    parentObject2 = "avatar_" + this.delegate.getAvatarsDialogId();
                }
                freeReceiver.setImage(null, null, imageLocation, "80_80", 0L, null, parentObject2, 1);
                freeReceiver.setParam(iMax);
                iMax++;
            }
        }
        if (iMin != Integer.MAX_VALUE) {
            while (iMin >= 0) {
                int i7 = iMin - this.currentImage;
                int i8 = this.itemWidth;
                int i9 = (i7 * (this.itemSpacing + i8)) + measuredWidth2 + i + i8;
                if (i9 <= 0) {
                    break;
                }
                ImageLocation imageLocation2 = (ImageLocation) this.currentPhotos.get(iMin);
                ImageReceiver freeReceiver2 = getFreeReceiver();
                freeReceiver2.setImageCoords(i9, this.itemY, this.itemWidth, this.itemHeight);
                if (this.currentObjects.get(0) instanceof MessageObject) {
                    parentObject = this.currentObjects.get(iMin);
                } else if (this.currentObjects.get(0) instanceof TLRPC.PageBlock) {
                    parentObject = this.delegate.getParentObject();
                } else {
                    parentObject = "avatar_" + this.delegate.getAvatarsDialogId();
                }
                freeReceiver2.setImage(null, null, imageLocation2, "80_80", 0L, null, parentObject, 1);
                freeReceiver2.setParam(iMin);
                iMin--;
            }
        }
        ValueAnimator valueAnimator = this.showAnimator;
        if (valueAnimator == null || valueAnimator.isStarted()) {
            return;
        }
        this.showAnimator.start();
    }

    private ImageReceiver getFreeReceiver() {
        ImageReceiver imageReceiver;
        if (this.unusedReceivers.isEmpty()) {
            imageReceiver = new ImageReceiver(this);
            imageReceiver.setAllowLoadingOnAttachedOnly(false);
        } else {
            imageReceiver = (ImageReceiver) this.unusedReceivers.get(0);
            this.unusedReceivers.remove(0);
        }
        this.imagesToDraw.add(imageReceiver);
        imageReceiver.setCurrentAccount(this.delegate.getCurrentAccount());
        return imageReceiver;
    }

    private int getMaxScrollX() {
        return this.currentImage * (this.itemWidth + (this.itemSpacing * 2));
    }

    private int getMinScrollX() {
        return (-((this.currentPhotos.size() - this.currentImage) - 1)) * (this.itemWidth + (this.itemSpacing * 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillList$0(ValueAnimator valueAnimator) {
        this.drawAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillList$1(ValueAnimator valueAnimator) {
        this.drawAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private void stopScrolling() {
        this.scrolling = false;
        if (!this.scroll.isFinished()) {
            this.scroll.abortAnimation();
        }
        int i = this.nextPhotoScrolling;
        if (i >= 0 && i < this.currentObjects.size()) {
            this.stopedScrolling = true;
            this.animateToItemFast = false;
            int i2 = this.nextPhotoScrolling;
            this.animateToItem = i2;
            this.nextImage = i2;
            this.animateToDX = (this.currentImage - i2) * (this.itemWidth + this.itemSpacing);
            this.animateToDXStart = this.drawDx;
            this.moveLineProgress = 1.0f;
            this.nextPhotoScrolling = -1;
            GroupedPhotosListViewDelegate groupedPhotosListViewDelegate = this.delegate;
            if (groupedPhotosListViewDelegate != null) {
                groupedPhotosListViewDelegate.onStopScrolling();
            }
        }
        invalidate();
    }

    private void updateAfterScroll() {
        int i;
        int i2;
        int i3;
        int i4 = this.drawDx;
        int iAbs = Math.abs(i4);
        int i5 = this.itemWidth;
        int i6 = this.itemSpacing;
        int i7 = (i5 / 2) + i6;
        int iIndexOf = -1;
        if (iAbs > i7) {
            if (i4 > 0) {
                i2 = i4 - i7;
                i3 = 1;
            } else {
                i2 = i4 + i7;
                i3 = -1;
            }
            i = i3 + (i2 / (i5 + (i6 * 2)));
        } else {
            i = 0;
        }
        this.nextPhotoScrolling = this.currentImage - i;
        int currentIndex = this.delegate.getCurrentIndex();
        ArrayList imagesArrLocations = this.delegate.getImagesArrLocations();
        ArrayList imagesArr = this.delegate.getImagesArr();
        List pageBlockArr = this.delegate.getPageBlockArr();
        int i8 = this.nextPhotoScrolling;
        if (currentIndex != i8 && i8 >= 0 && i8 < this.currentPhotos.size()) {
            Object obj = this.currentObjects.get(this.nextPhotoScrolling);
            if (imagesArr != null && !imagesArr.isEmpty()) {
                iIndexOf = imagesArr.indexOf((MessageObject) obj);
            } else if (pageBlockArr != null && !pageBlockArr.isEmpty()) {
                iIndexOf = pageBlockArr.indexOf((TLRPC.PageBlock) obj);
            } else if (imagesArrLocations != null && !imagesArrLocations.isEmpty()) {
                iIndexOf = imagesArrLocations.indexOf((ImageLocation) obj);
            }
            if (iIndexOf >= 0) {
                this.ignoreChanges = true;
                this.delegate.setCurrentIndex(iIndexOf);
            }
        }
        if (!this.scrolling) {
            this.scrolling = true;
            this.stopedScrolling = false;
        }
        fillImages(true, this.drawDx);
    }

    public void clear() {
        this.currentPhotos.clear();
        this.currentObjects.clear();
        this.imagesToDraw.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0260  */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillList() {
        ArrayList arrayList;
        boolean z;
        Object obj;
        TLRPC.PageBlock pageBlock;
        boolean z2;
        int i;
        ?? r3;
        int i2 = 0;
        if (this.ignoreChanges) {
            this.ignoreChanges = false;
            return;
        }
        int currentIndex = this.delegate.getCurrentIndex();
        ArrayList imagesArrLocations = this.delegate.getImagesArrLocations();
        ArrayList imagesArr = this.delegate.getImagesArr();
        List pageBlockArr = this.delegate.getPageBlockArr();
        int slideshowMessageId = this.delegate.getSlideshowMessageId();
        this.delegate.getCurrentAccount();
        this.hasPhotos = false;
        if (imagesArrLocations != null && !imagesArrLocations.isEmpty()) {
            if (currentIndex >= imagesArrLocations.size()) {
                currentIndex = imagesArrLocations.size() - 1;
            }
            ImageLocation imageLocation = (ImageLocation) imagesArrLocations.get(currentIndex);
            int size = imagesArrLocations.size();
            this.hasPhotos = true;
            arrayList = imagesArrLocations;
            i2 = size;
            z = false;
            obj = imageLocation;
        } else if (imagesArr == null || imagesArr.isEmpty()) {
            arrayList = imagesArrLocations;
            if (pageBlockArr == null || pageBlockArr.isEmpty()) {
                z = false;
                i2 = 0;
                obj = null;
            } else {
                TLRPC.PageBlock pageBlock2 = (TLRPC.PageBlock) pageBlockArr.get(currentIndex);
                long j = pageBlock2.groupId;
                if (j != this.currentGroupId) {
                    this.currentGroupId = j;
                    z = true;
                } else {
                    z = false;
                }
                if (this.currentGroupId != 0) {
                    this.hasPhotos = true;
                    int size2 = pageBlockArr.size();
                    int i3 = currentIndex;
                    i2 = 0;
                    TLRPC.PageBlock pageBlock3 = pageBlock2;
                    while (true) {
                        if (i3 >= size2) {
                            pageBlock = pageBlock3;
                            break;
                        }
                        pageBlock = pageBlock3;
                        if (((TLRPC.PageBlock) pageBlockArr.get(i3)).groupId != this.currentGroupId) {
                            break;
                        }
                        i2++;
                        i3++;
                        pageBlock3 = pageBlock;
                    }
                    for (int i4 = currentIndex - 1; i4 >= 0 && ((TLRPC.PageBlock) pageBlockArr.get(i4)).groupId == this.currentGroupId; i4--) {
                        i2++;
                    }
                    obj = pageBlock;
                } else {
                    i2 = 0;
                    obj = pageBlock2;
                }
            }
        } else {
            if (currentIndex >= imagesArr.size()) {
                currentIndex = imagesArr.size() - 1;
            }
            MessageObject messageObject = (MessageObject) imagesArr.get(currentIndex);
            long groupIdForUse = messageObject.getGroupIdForUse();
            if (groupIdForUse != this.currentGroupId) {
                this.currentGroupId = groupIdForUse;
                z = true;
            } else {
                z = false;
            }
            boolean z3 = imagesArr.size() > 1 && this.delegate.forceAll();
            if (this.currentGroupId != 0 || z3) {
                this.hasPhotos = true;
                int iMin = Math.min(currentIndex + 10, imagesArr.size());
                int i5 = 0;
                for (int i6 = currentIndex; i6 < iMin; i6++) {
                    MessageObject messageObject2 = (MessageObject) imagesArr.get(i6);
                    if (slideshowMessageId == 0 && !z3 && messageObject2.getGroupIdForUse() != this.currentGroupId) {
                        break;
                    }
                    i5++;
                }
                int iMax = Math.max(currentIndex - 10, 0);
                int i7 = currentIndex - 1;
                int i8 = i5;
                while (true) {
                    if (i7 < iMax) {
                        arrayList = imagesArrLocations;
                        break;
                    }
                    MessageObject messageObject3 = (MessageObject) imagesArr.get(i7);
                    if (slideshowMessageId == 0 && !z3) {
                        arrayList = imagesArrLocations;
                        if (messageObject3.getGroupIdForUse() != this.currentGroupId) {
                            break;
                        }
                    } else {
                        arrayList = imagesArrLocations;
                    }
                    i8++;
                    i7--;
                    imagesArrLocations = arrayList;
                }
                i2 = i8;
                obj = messageObject;
            } else {
                arrayList = imagesArrLocations;
                obj = messageObject;
            }
        }
        if (obj == null) {
            return;
        }
        if (this.animationsEnabled) {
            if (this.hasPhotos) {
                ValueAnimator valueAnimator = this.hideAnimator;
                if (valueAnimator != null) {
                    this.hideAnimator = null;
                    valueAnimator.cancel();
                }
                float f = this.drawAlpha;
                if (f < 1.0f && this.showAnimator == null) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 1.0f);
                    this.showAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.setDuration((long) ((1.0f - this.drawAlpha) * 200.0f));
                    this.showAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.GroupedPhotosListView.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (GroupedPhotosListView.this.showAnimator == animator) {
                                GroupedPhotosListView.this.showAnimator = null;
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            if (GroupedPhotosListView.this.delegate != null) {
                                GroupedPhotosListView.this.delegate.onShowAnimationStart();
                            }
                        }
                    });
                    this.showAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.GroupedPhotosListView$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$fillList$1(valueAnimator2);
                        }
                    });
                }
            } else {
                ValueAnimator valueAnimator2 = this.showAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                    this.showAnimator = null;
                }
                if (this.drawAlpha > BitmapDescriptorFactory.HUE_RED && this.currentPhotos.size() > 1) {
                    if (this.hideAnimator == null) {
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.drawAlpha, BitmapDescriptorFactory.HUE_RED);
                        this.hideAnimator = valueAnimatorOfFloat2;
                        valueAnimatorOfFloat2.setDuration((long) (this.drawAlpha * 200.0f));
                        this.hideAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.GroupedPhotosListView.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (GroupedPhotosListView.this.hideAnimator == animator) {
                                    GroupedPhotosListView.this.hideAnimator = null;
                                    GroupedPhotosListView.this.fillList();
                                }
                            }
                        });
                        this.hideAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.GroupedPhotosListView$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                this.f$0.lambda$fillList$0(valueAnimator3);
                            }
                        });
                        this.hideAnimator.start();
                        return;
                    }
                    return;
                }
            }
        }
        if (z) {
            z2 = false;
        } else if (i2 == this.currentPhotos.size() && this.currentObjects.contains(obj)) {
            int iIndexOf = this.currentObjects.indexOf(obj);
            int i9 = this.currentImage;
            if (i9 != iIndexOf && iIndexOf != -1) {
                boolean z4 = this.animateAllLine;
                if (!z4 && !this.moving && (iIndexOf == i9 - 1 || iIndexOf == i9 + 1)) {
                    this.animateToItemFast = true;
                    z4 = true;
                }
                if (z4) {
                    this.animateToItem = iIndexOf;
                    this.nextImage = iIndexOf;
                    this.animateToDX = (i9 - iIndexOf) * (this.itemWidth + this.itemSpacing);
                    this.moving = true;
                    this.animateAllLine = false;
                    this.lastUpdateTime = System.currentTimeMillis();
                    invalidate();
                    z2 = false;
                } else {
                    fillImages(true, (i9 - iIndexOf) * (this.itemWidth + this.itemSpacing));
                    this.currentImage = iIndexOf;
                    z2 = false;
                    this.moving = false;
                }
                this.drawDx = z2 ? 1 : 0;
            }
        } else {
            z2 = false;
            z = true;
        }
        if (z) {
            int size3 = this.currentPhotos.size();
            this.animateAllLine = z2;
            this.currentPhotos.clear();
            this.currentObjects.clear();
            if (arrayList != null && !arrayList.isEmpty()) {
                ArrayList arrayList2 = arrayList;
                this.currentObjects.addAll(arrayList2);
                this.currentPhotos.addAll(arrayList2);
                this.currentImage = currentIndex;
                this.animateToItem = -1;
                this.animateToItemFast = false;
            } else if (imagesArr == null || imagesArr.isEmpty()) {
                int i10 = currentIndex;
                if (pageBlockArr != null && !pageBlockArr.isEmpty() && this.currentGroupId != 0) {
                    int size4 = pageBlockArr.size();
                    for (int i11 = i10; i11 < size4; i11++) {
                        TLRPC.PageBlock pageBlock4 = (TLRPC.PageBlock) pageBlockArr.get(i11);
                        if (pageBlock4.groupId != this.currentGroupId) {
                            break;
                        }
                        this.currentObjects.add(pageBlock4);
                        this.currentPhotos.add(ImageLocation.getForObject(pageBlock4.thumb, pageBlock4.thumbObject));
                    }
                    this.currentImage = 0;
                    this.animateToItem = -1;
                    this.animateToItemFast = false;
                    for (int i12 = i10 - 1; i12 >= 0; i12--) {
                        TLRPC.PageBlock pageBlock5 = (TLRPC.PageBlock) pageBlockArr.get(i12);
                        if (pageBlock5.groupId != this.currentGroupId) {
                            break;
                        }
                        this.currentObjects.add(0, pageBlock5);
                        this.currentPhotos.add(0, ImageLocation.getForObject(pageBlock5.thumb, pageBlock5.thumbObject));
                        this.currentImage++;
                    }
                }
            } else {
                boolean z5 = this.delegate.forceAll() && imagesArr.size() > 1;
                if (this.currentGroupId != 0 || z5 || slideshowMessageId != 0) {
                    int iMin2 = Math.min(currentIndex + 10, imagesArr.size());
                    int i13 = currentIndex;
                    while (true) {
                        if (i13 >= iMin2) {
                            i = currentIndex;
                            r3 = 0;
                            break;
                        }
                        MessageObject messageObject4 = (MessageObject) imagesArr.get(i13);
                        if (slideshowMessageId == 0 && !z5) {
                            i = currentIndex;
                            if (messageObject4.getGroupIdForUse() != this.currentGroupId) {
                                r3 = 0;
                                break;
                            }
                        } else {
                            i = currentIndex;
                        }
                        this.currentObjects.add(messageObject4);
                        this.currentPhotos.add(ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(messageObject4.photoThumbs, 56, true), messageObject4.photoThumbsObject));
                        i13++;
                        currentIndex = i;
                    }
                    this.currentImage = r3;
                    this.animateToItem = -1;
                    this.animateToItemFast = r3;
                    int iMax2 = Math.max(i - 10, (int) r3);
                    for (int i14 = i - 1; i14 >= iMax2; i14--) {
                        MessageObject messageObject5 = (MessageObject) imagesArr.get(i14);
                        if (slideshowMessageId == 0 && !z5 && messageObject5.getGroupIdForUse() != this.currentGroupId) {
                            break;
                        }
                        this.currentObjects.add(0, messageObject5);
                        this.currentPhotos.add(0, ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(messageObject5.photoThumbs, 56, true), messageObject5.photoThumbsObject));
                        this.currentImage++;
                    }
                }
            }
            if (this.currentPhotos.size() == 1) {
                this.currentPhotos.clear();
                this.currentObjects.clear();
            }
            if (this.currentPhotos.size() != size3) {
                requestLayout();
            }
            fillImages(false, 0);
        }
    }

    public int getCount() {
        return this.currentPhotos.size();
    }

    public int getIndex() {
        return this.currentImage;
    }

    public boolean hasPhotos() {
        ValueAnimator valueAnimator;
        return this.hasPhotos && this.hideAnimator == null && (this.drawAlpha > BitmapDescriptorFactory.HUE_RED || !this.animateBackground || ((valueAnimator = this.showAnimator) != null && valueAnimator.isStarted()));
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (!this.scroll.isFinished()) {
            this.scroll.abortAnimation();
        }
        this.animateToItem = -1;
        this.animateToItemFast = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x024a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        int iMax;
        float interpolation;
        int iCeil;
        int i;
        int param;
        TLRPC.PhotoSize photoSize;
        TLRPC.PhotoSize photoSize2;
        if (this.hasPhotos || !this.imagesToDraw.isEmpty()) {
            float f = this.drawAlpha;
            if (!this.animateBackground) {
                f = this.hasPhotos ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            this.backgroundPaint.setAlpha((int) (f * 127.0f));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.backgroundPaint);
            if (this.imagesToDraw.isEmpty()) {
                return;
            }
            int size = this.imagesToDraw.size();
            int i2 = this.drawDx;
            int i3 = (int) (this.itemWidth * 2.0f);
            int iDp = AndroidUtilities.dp(8.0f);
            ImageLocation imageLocation = (ImageLocation) this.currentPhotos.get(this.currentImage);
            int iMin = Math.min(i3, (imageLocation == null || (photoSize2 = imageLocation.photoSize) == null) ? this.itemHeight : Math.max(this.itemWidth, (int) (photoSize2.w * (this.itemHeight / photoSize2.h))));
            float f2 = iDp * 2;
            float f3 = this.currentItemProgress;
            int i4 = (int) (f2 * f3);
            int i5 = this.itemWidth + ((int) ((iMin - r11) * f3)) + i4;
            int i6 = this.nextImage;
            if (i6 < 0 || i6 >= this.currentPhotos.size()) {
                iMax = this.itemWidth;
            } else {
                ImageLocation imageLocation2 = (ImageLocation) this.currentPhotos.get(this.nextImage);
                iMax = (imageLocation2 == null || (photoSize = imageLocation2.photoSize) == null) ? this.itemHeight : Math.max(this.itemWidth, (int) (photoSize.w * (this.itemHeight / photoSize.h)));
            }
            int iMin2 = Math.min(i3, iMax);
            float f4 = this.nextItemProgress;
            int i7 = (int) (f2 * f4);
            float f5 = i2;
            int i8 = 1;
            int i9 = (int) (f5 + ((((iMin2 + i7) - r12) / 2) * f4 * (this.nextImage > this.currentImage ? -1 : 1)));
            int i10 = this.itemWidth + ((int) ((iMin2 - r12) * f4)) + i7;
            int measuredWidth = (getMeasuredWidth() - i5) / 2;
            int i11 = 0;
            while (i11 < size) {
                ImageReceiver imageReceiver = (ImageReceiver) this.imagesToDraw.get(i11);
                int param2 = imageReceiver.getParam();
                int i12 = this.currentImage;
                if (param2 == i12) {
                    imageReceiver.setImageX(measuredWidth + i9 + (i4 / 2));
                    imageReceiver.setImageWidth(i5 - i4);
                } else {
                    int i13 = this.nextImage;
                    if (i13 < i12) {
                        if (param2 >= i12) {
                            param = measuredWidth + i5 + this.itemSpacing + (((imageReceiver.getParam() - this.currentImage) - i8) * (this.itemWidth + this.itemSpacing));
                        } else if (param2 <= i13) {
                            int param3 = (imageReceiver.getParam() - this.currentImage) + i8;
                            int i14 = this.itemWidth;
                            int i15 = this.itemSpacing;
                            param = ((param3 * (i14 + i15)) + measuredWidth) - (i15 + i10);
                        } else {
                            param = ((imageReceiver.getParam() - this.currentImage) * (this.itemWidth + this.itemSpacing)) + measuredWidth;
                        }
                        imageReceiver.setImageX(param + i9);
                        if (param2 != this.nextImage) {
                            imageReceiver.setImageWidth(i10 - i7);
                            imageReceiver.setImageX((int) (imageReceiver.getImageX() + (i7 / 2)));
                        } else {
                            imageReceiver.setImageWidth(this.itemWidth);
                        }
                    } else {
                        if (param2 >= i12) {
                            if (param2 > i13) {
                                int i16 = measuredWidth + i5 + this.itemSpacing;
                                int param4 = (imageReceiver.getParam() - this.currentImage) - 2;
                                int i17 = this.itemWidth;
                                int i18 = this.itemSpacing;
                                param = i16 + (param4 * (i17 + i18)) + i18 + i10;
                            }
                        }
                        imageReceiver.setImageX(param + i9);
                        if (param2 != this.nextImage) {
                        }
                    }
                }
                imageReceiver.setAlpha(this.drawAlpha);
                imageReceiver.setRoundRadius(AndroidUtilities.dp(2.0f));
                imageReceiver.draw(canvas);
                i11++;
                i8 = 1;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = jCurrentTimeMillis - this.lastUpdateTime;
            if (j > 17) {
                j = 17;
            }
            this.lastUpdateTime = jCurrentTimeMillis;
            int i19 = this.animateToItem;
            if (i19 >= 0) {
                float f6 = this.moveLineProgress;
                if (f6 > BitmapDescriptorFactory.HUE_RED) {
                    float f7 = j;
                    float f8 = f6 - (f7 / (this.animateToItemFast ? 100.0f : 200.0f));
                    this.moveLineProgress = f8;
                    if (i19 == this.currentImage) {
                        float f9 = this.currentItemProgress;
                        if (f9 < 1.0f) {
                            float f10 = f9 + (f7 / 200.0f);
                            this.currentItemProgress = f10;
                            if (f10 > 1.0f) {
                                this.currentItemProgress = 1.0f;
                            }
                        }
                        i = this.animateToDXStart;
                        interpolation = this.currentItemProgress;
                    } else {
                        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
                        interpolation = cubicBezierInterpolator.getInterpolation(1.0f - f8);
                        this.nextItemProgress = interpolation;
                        if (this.stopedScrolling) {
                            float f11 = this.currentItemProgress;
                            if (f11 > BitmapDescriptorFactory.HUE_RED) {
                                float f12 = f11 - (f7 / 200.0f);
                                this.currentItemProgress = f12;
                                if (f12 < BitmapDescriptorFactory.HUE_RED) {
                                    this.currentItemProgress = BitmapDescriptorFactory.HUE_RED;
                                }
                            }
                            i = this.animateToDXStart;
                        } else {
                            this.currentItemProgress = cubicBezierInterpolator.getInterpolation(this.moveLineProgress);
                            iCeil = (int) Math.ceil(this.nextItemProgress * this.animateToDX);
                            this.drawDx = iCeil;
                            if (this.moveLineProgress <= BitmapDescriptorFactory.HUE_RED) {
                                this.currentImage = this.animateToItem;
                                this.moveLineProgress = 1.0f;
                                this.currentItemProgress = 1.0f;
                                this.nextItemProgress = BitmapDescriptorFactory.HUE_RED;
                                this.moving = false;
                                this.stopedScrolling = false;
                                this.drawDx = 0;
                                this.animateToItem = -1;
                                this.animateToItemFast = false;
                            }
                        }
                    }
                    iCeil = i + ((int) Math.ceil(interpolation * (this.animateToDX - i)));
                    this.drawDx = iCeil;
                    if (this.moveLineProgress <= BitmapDescriptorFactory.HUE_RED) {
                    }
                }
                fillImages(true, this.drawDx);
                invalidate();
            }
            if (this.scrolling) {
                float f13 = this.currentItemProgress;
                if (f13 > BitmapDescriptorFactory.HUE_RED) {
                    float f14 = f13 - (j / 200.0f);
                    this.currentItemProgress = f14;
                    if (f14 < BitmapDescriptorFactory.HUE_RED) {
                        this.currentItemProgress = BitmapDescriptorFactory.HUE_RED;
                    }
                    invalidate();
                }
            }
            if (this.scroll.isFinished()) {
                return;
            }
            if (this.scroll.computeScrollOffset()) {
                this.drawDx = this.scroll.getCurrX();
                updateAfterScroll();
                invalidate();
            }
            if (this.scroll.isFinished()) {
                stopScrolling();
            }
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.scroll.abortAnimation();
        if (this.currentPhotos.size() < 10) {
            return false;
        }
        this.scroll.fling(this.drawDx, 0, Math.round(f), 0, getMinScrollX(), getMaxScrollX(), 0, 0);
        return false;
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        fillImages(false, 0);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.drawDx = (int) (this.drawDx - f);
        int minScrollX = getMinScrollX();
        int maxScrollX = getMaxScrollX();
        int i = this.drawDx;
        if (i < minScrollX) {
            this.drawDx = minScrollX;
        } else if (i > maxScrollX) {
            this.drawDx = maxScrollX;
        }
        updateAfterScroll();
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        int iIndexOf;
        int currentIndex = this.delegate.getCurrentIndex();
        ArrayList imagesArrLocations = this.delegate.getImagesArrLocations();
        ArrayList imagesArr = this.delegate.getImagesArr();
        List pageBlockArr = this.delegate.getPageBlockArr();
        stopScrolling();
        int size = this.imagesToDraw.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            ImageReceiver imageReceiver = (ImageReceiver) this.imagesToDraw.get(i);
            if (imageReceiver.isInsideImage(motionEvent.getX(), motionEvent.getY())) {
                int param = imageReceiver.getParam();
                if (param < 0 || param >= this.currentObjects.size()) {
                    return true;
                }
                if (imagesArr != null && !imagesArr.isEmpty()) {
                    iIndexOf = imagesArr.indexOf((MessageObject) this.currentObjects.get(param));
                    if (currentIndex == iIndexOf) {
                        return true;
                    }
                } else if (pageBlockArr != null && !pageBlockArr.isEmpty()) {
                    iIndexOf = pageBlockArr.indexOf((TLRPC.PageBlock) this.currentObjects.get(param));
                    if (currentIndex == iIndexOf) {
                        return true;
                    }
                } else if (imagesArrLocations != null && !imagesArrLocations.isEmpty()) {
                    iIndexOf = imagesArrLocations.indexOf((ImageLocation) this.currentObjects.get(param));
                    if (currentIndex == iIndexOf) {
                        return true;
                    }
                }
                this.moveLineProgress = 1.0f;
                this.animateAllLine = true;
                this.delegate.setCurrentIndex(iIndexOf);
            } else {
                i++;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.currentPhotos.isEmpty() && getAlpha() == 1.0f) {
            z = this.gestureDetector.onTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
            if (this.scrolling && motionEvent.getAction() == 1 && this.scroll.isFinished()) {
                stopScrolling();
            }
        }
        return z;
    }

    public void reset() {
        this.hasPhotos = false;
        if (this.animationsEnabled) {
            this.drawAlpha = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public void setAnimateBackground(boolean z) {
        this.animateBackground = z;
    }

    public void setAnimationsEnabled(boolean z) {
        if (this.animationsEnabled != z) {
            this.animationsEnabled = z;
            if (z) {
                return;
            }
            ValueAnimator valueAnimator = this.showAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.showAnimator = null;
            }
            ValueAnimator valueAnimator2 = this.hideAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.hideAnimator = null;
            }
            this.drawAlpha = BitmapDescriptorFactory.HUE_RED;
            invalidate();
        }
    }

    public void setDelegate(GroupedPhotosListViewDelegate groupedPhotosListViewDelegate) {
        this.delegate = groupedPhotosListViewDelegate;
    }

    public void setMoveProgress(float f) {
        if (this.scrolling || this.animateToItem >= 0) {
            return;
        }
        this.nextImage = f > BitmapDescriptorFactory.HUE_RED ? this.currentImage - 1 : this.currentImage + 1;
        int i = this.nextImage;
        if (i < 0 || i >= this.currentPhotos.size()) {
            this.currentItemProgress = 1.0f;
        } else {
            this.currentItemProgress = 1.0f - Math.abs(f);
        }
        this.nextItemProgress = 1.0f - this.currentItemProgress;
        this.moving = f != BitmapDescriptorFactory.HUE_RED;
        invalidate();
        if (this.currentPhotos.isEmpty()) {
            return;
        }
        if (f >= BitmapDescriptorFactory.HUE_RED || this.currentImage != this.currentPhotos.size() - 1) {
            if (f <= BitmapDescriptorFactory.HUE_RED || this.currentImage != 0) {
                int i2 = (int) (f * (this.itemWidth + this.itemSpacing));
                this.drawDx = i2;
                fillImages(true, i2);
            }
        }
    }
}

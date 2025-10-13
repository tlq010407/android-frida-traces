.class public Lorg/telegram/ui/AvatarSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final currentAccount:I

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public needDrawShadow:Z

.field private parent:Landroid/view/View;

.field private final parentAttachListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private shadowPaintAlpha:I

.field private sz:F

.field private translateX:F

.field private translateY:F

.field public usePaintAlpha:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 0
    const/high16 v0, 0x41900000    # 18.0f

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IF)V
    .locals 3

    .line 0
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/AvatarSpan;->needDrawShadow:Z

    new-instance v1, Lorg/telegram/ui/AvatarSpan$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AvatarSpan$1;-><init>(Lorg/telegram/ui/AvatarSpan;)V

    iput-object v1, p0, Lorg/telegram/ui/AvatarSpan;->parentAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    const/16 v1, 0xff

    iput v1, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaintAlpha:I

    iput-boolean v0, p0, Lorg/telegram/ui/AvatarSpan;->usePaintAlpha:Z

    iput p2, p0, Lorg/telegram/ui/AvatarSpan;->currentAccount:I

    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/AvatarSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p0, p3}, Lorg/telegram/ui/AvatarSpan;->setSize(F)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    const v0, 0x3f28f5c3    # 0.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x33000000

    invoke-virtual {p2, p3, v1, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/AvatarSpan;->setParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/AvatarSpan;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method public static checkSpansParent(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Lorg/telegram/ui/AvatarSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/AvatarSpan;

    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v1, p0, v2

    invoke-virtual {v1, p1}, Lorg/telegram/ui/AvatarSpan;->setParent(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4

    iget-boolean p2, p0, Lorg/telegram/ui/AvatarSpan;->needDrawShadow:Z

    const/high16 p3, 0x437f0000    # 255.0f

    const/high16 p4, 0x3f800000    # 1.0f

    const/high16 p7, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaintAlpha:I

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaintAlpha:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaint:Landroid/graphics/Paint;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaintAlpha:I

    int-to-float v2, v2

    div-float/2addr v2, p3

    const/high16 v3, 0x33000000

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget p2, p0, Lorg/telegram/ui/AvatarSpan;->translateX:F

    add-float/2addr p2, p5

    iget v0, p0, Lorg/telegram/ui/AvatarSpan;->sz:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p7

    add-float/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/AvatarSpan;->translateY:F

    add-int v1, p6, p8

    int-to-float v1, v1

    div-float/2addr v1, p7

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/AvatarSpan;->sz:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p7

    iget-object v2, p0, Lorg/telegram/ui/AvatarSpan;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v0, p0, Lorg/telegram/ui/AvatarSpan;->translateX:F

    add-float/2addr v0, p5

    iget p5, p0, Lorg/telegram/ui/AvatarSpan;->translateY:F

    add-int/2addr p6, p8

    int-to-float p6, p6

    div-float/2addr p6, p7

    add-float/2addr p5, p6

    iget p6, p0, Lorg/telegram/ui/AvatarSpan;->sz:F

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p6, p7

    sub-float/2addr p5, p6

    iget p6, p0, Lorg/telegram/ui/AvatarSpan;->sz:F

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    iget p7, p0, Lorg/telegram/ui/AvatarSpan;->sz:F

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p7

    int-to-float p7, p7

    invoke-virtual {p2, v0, p5, p6, p7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p5, p0, Lorg/telegram/ui/AvatarSpan;->usePaintAlpha:Z

    if-eqz p5, :cond_2

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    :cond_2
    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget p1, p0, Lorg/telegram/ui/AvatarSpan;->sz:F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method

.method public setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/AvatarSpan;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/AvatarSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDialogId(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    iget v0, p0, Lorg/telegram/ui/AvatarSpan;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-ltz v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setObject(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/AvatarSpan;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/AvatarSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->parent:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/AvatarSpan;->parentAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->parent:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/AvatarSpan;->parent:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->parentAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public setSize(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iput p1, p0, Lorg/telegram/ui/AvatarSpan;->sz:F

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/AvatarSpan;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v0, p0, Lorg/telegram/ui/AvatarSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/AvatarSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public translate(FF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/AvatarSpan;->translateX:F

    iput p2, p0, Lorg/telegram/ui/AvatarSpan;->translateY:F

    return-void
.end method

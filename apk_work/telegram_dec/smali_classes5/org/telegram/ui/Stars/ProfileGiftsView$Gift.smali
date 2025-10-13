.class public final Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/ProfileGiftsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Gift"
.end annotation


# instance fields
.field public animatedFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final bounds:Landroid/graphics/RectF;

.field public final color:I

.field public final document:Lorg/telegram/tgnet/TLRPC$Document;

.field public final documentId:J

.field public emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field public gradient:Landroid/graphics/RadialGradient;

.field public final gradientMatrix:Landroid/graphics/Matrix;

.field public gradientPaint:Landroid/graphics/Paint;

.field public final id:J

.field public final slug:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Stars/ProfileGiftsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stars/ProfileGiftsView;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->this$0:Lorg/telegram/ui/Stars/ProfileGiftsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradientMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->bounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->documentId:J

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->color:I

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->slug:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy(Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;)V
    .locals 1

    iget-object v0, p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradient:Landroid/graphics/RadialGradient;

    iput-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradient:Landroid/graphics/RadialGradient;

    iget-object v0, p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iput-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v0, p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradientPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradientPaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->animatedFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-object p1, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->animatedFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFFFFF)V
    .locals 10

    move-object v0, p0

    move-object v7, p1

    const/4 v1, 0x0

    cmpg-float v1, p6, v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->bounds:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v1, v3

    sub-float v4, p2, v5

    sub-float v6, p3, v5

    add-float v8, p2, v5

    add-float v9, p3, v5

    invoke-virtual {v2, v4, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    move v2, p5

    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    mul-float v2, v2, p4

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradientPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000    # 255.0f

    if-eqz v2, :cond_1

    mul-float v4, p6, v8

    mul-float v4, v4, p7

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    neg-float v1, v1

    div-float v3, v1, v3

    iget-object v6, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->gradientPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    mul-float v2, p6, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public equals(Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/Stars/ProfileGiftsView$Gift;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

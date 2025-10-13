.class public Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedEmojiHolder"
.end annotation


# instance fields
.field public alpha:F

.field private backgroundDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

.field public drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field public drawableBounds:Landroid/graphics/Rect;

.field public drawingYOffset:F

.field public insideSpoiler:Z

.field private final invalidateInParent:Z

.field public layout:Landroid/text/Layout;

.field public skipDraw:Z

.field public span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

.field public spansChunk:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

.field public thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->backgroundDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->view:Landroid/view/View;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->invalidateInParent:Z

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->invalidateInParent:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->backgroundDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JFFFLandroid/graphics/ColorFilter;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p4, v1

    if-nez v2, :cond_0

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p4, p5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->outOfBounds(FF)Z

    move-result p4

    if-eqz p4, :cond_1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->skipDraw:Z

    return-void

    :cond_1
    const/4 p4, 0x0

    iput-boolean p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->skipDraw:Z

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 p5, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p4, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getExtraScale()F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float p6, p6, p4

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->alpha:F

    mul-float p6, p6, p4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    cmpl-float p3, p2, v1

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-boolean p3, p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->invert:Z

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-boolean p3, p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->invert:Z

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    :cond_4
    int-to-float p3, v0

    mul-float p3, p3, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->centerY()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p4

    if-eqz p4, :cond_b

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez p7, :cond_7

    sget-object p7, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_7
    invoke-virtual {p4, p7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p4, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setTime(J)V

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getExtraScale()F

    move-result p2

    cmpl-float p3, p2, v1

    if-nez p3, :cond_9

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-boolean p3, p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->invert:Z

    if-eqz p3, :cond_8

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->alpha:F

    mul-float p6, p6, p4

    invoke-virtual {p2, p1, p3, p6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-boolean p3, p3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->invert:Z

    if-eqz p3, :cond_a

    const/4 v0, -0x1

    :cond_a
    int-to-float p3, v0

    mul-float p3, p3, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->centerY()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->alpha:F

    mul-float p6, p6, p4

    invoke-virtual {p2, p1, p3, p6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->access$400(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->invalidate()V

    :cond_b
    return-void
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->invalidateInParent:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public outOfBounds(FF)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p1, v1, p1

    if-ltz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public prepareForBackgroundDraw(JI)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->update(J)V

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->backgroundDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    aget-object v2, v1, p3

    invoke-virtual {v0, v2, p3}, Lorg/telegram/messenger/ImageReceiver;->setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v0

    aput-object v0, v1, p3

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->backgroundDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    aget-object v0, v0, p3

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->alpha:F

    iput v1, v0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->backgroundDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    aget-object p3, v0, p3

    iput-wide p1, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    :cond_2
    return-void
.end method

.method public releaseDrawInBackground(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->backgroundDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->release()V

    :cond_0
    return-void
.end method

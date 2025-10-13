.class public Lorg/telegram/ui/Components/Paint/Views/LocationView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/LocationView$TextViewSelectionView;
    }
.end annotation


# instance fields
.field private currentColor:I

.field private currentType:I

.field private hasColor:Z

.field public location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public final marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

.field public mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;FI)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p6, v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;-><init>(Landroid/content/Context;IFI)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p2, p7}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setLocation(ILorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->currentColor:I

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    const/4 p1, -0x2

    const/16 p3, 0x33

    invoke-static {p1, p1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method private static deg(D)Ljava/lang/String;
    .locals 10

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u00b0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    const-wide/16 v5, 0x0

    cmpg-double v7, p0, v5

    if-gtz v7, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpg-double v9, p0, v7

    if-gez v9, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, v3

    :goto_1
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v9, p0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpg-double v1, p0, v5

    if-gtz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpg-double v1, p0, v7

    if-gez v1, :cond_3

    move-object v3, v2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static geo(DD)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->deg(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    cmpl-double v3, p0, v1

    if-lez v3, :cond_0

    const-string p0, "N"

    goto :goto_0

    :cond_0
    const-string p0, "S"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->deg(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-double p0, p2, v1

    if-lez p0, :cond_1

    const-string p0, "E"

    goto :goto_1

    :cond_1
    const-string p0, "W"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/LocationView$TextViewSelectionView;

    move-result-object v0

    return-object v0
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/LocationView$TextViewSelectionView;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LocationView$TextViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationView$TextViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/LocationView;Landroid/content/Context;)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->currentColor:I

    return v0
.end method

.method protected getMaxScale()F
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v2, v5

    mul-float v2, v2, v0

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    new-instance v5, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    div-float v4, v3, v4

    sub-float/2addr v6, v4

    mul-float v6, v6, v0

    sub-float/2addr v1, v2

    mul-float v3, v3, v0

    invoke-direct {v5, v2, v6, v1, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method protected getStickyPaddingBottom()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingLeft()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingRight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v0, v0

    return v0
.end method

.method protected getStickyPaddingTop()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v0, v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->currentType:I

    return v0
.end method

.method public getTypesCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getTypesCount()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->hasColor:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasColor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->hasColor:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->hasColor:Z

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->currentColor:I

    return-void
.end method

.method public setLocation(ILorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 3

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-static {v1, v2, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->geo(DD)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz p3, :cond_1

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    move-object p2, p3

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setCodeEmoji(ILjava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->currentType:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->currentColor:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    return-void
.end method

.class public Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/CollageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field public final layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;IILorg/telegram/ui/Stories/recorder/CollageLayout$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;II)V

    return-void
.end method


# virtual methods
.method public final b(F)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method public final bounds(Landroid/graphics/RectF;FF)V
    .locals 2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->l(F)F

    move-result v0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->t(F)F

    move-result v1

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->r(F)F

    move-result p2

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->b(F)F

    move-result p3

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final h(F)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public final l(F)F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method public final r(F)F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method public final t(F)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method public final w(F)F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

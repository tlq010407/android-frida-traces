.class public Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDrawParams"
.end annotation


# instance fields
.field lastDrawFullBottom:Z

.field lastDrawFullTop:Z

.field lastRect:Landroid/graphics/Rect;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public invalidatePath(Landroid/graphics/Rect;ZZ)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastDrawFullTop:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastDrawFullBottom:Z

    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastDrawFullTop:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastDrawFullBottom:Z

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;->lastRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v0
.end method

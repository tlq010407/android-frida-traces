.class public Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalDrawable"
.end annotation


# instance fields
.field public colors:[I

.field originDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;[I)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;->originDrawable:Landroid/graphics/drawable/Drawable;

    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;->colors:[I

    array-length p2, p3

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    return-void
.end method

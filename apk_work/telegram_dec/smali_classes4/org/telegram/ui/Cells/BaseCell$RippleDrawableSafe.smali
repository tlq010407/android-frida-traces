.class public Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;
.super Landroid/graphics/drawable/RippleDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/BaseCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleDrawableSafe"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "probably forgot to put setCallback"

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/RippleDrawable;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/BaseCell;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/RippleDrawable;)Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->forceNotCacheNextFrame()V

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    move-result p1

    return p1
.end method

.class Lorg/telegram/ui/Components/ClipRoundedDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ClipRoundedDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ClipRoundedDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ClipRoundedDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable$1;->this$0:Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable$1;->this$0:Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable$1;->this$0:Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable$1;->this$0:Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lorg/telegram/ui/Components/SeekSpeedDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SeekSpeedDrawable;->draw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SeekSpeedDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SeekSpeedDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable$2;->this$0:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable$2;->this$0:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    invoke-static {p1}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->access$000(Lorg/telegram/ui/Components/SeekSpeedDrawable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

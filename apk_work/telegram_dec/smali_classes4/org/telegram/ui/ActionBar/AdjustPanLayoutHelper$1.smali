.class Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$1;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$1;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$1;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

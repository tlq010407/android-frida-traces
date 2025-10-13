.class Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-wide v2, v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1388

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    mul-int v0, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollBy(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

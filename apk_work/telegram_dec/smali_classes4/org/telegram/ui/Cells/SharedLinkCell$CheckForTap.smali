.class final Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/SharedLinkCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/SharedLinkCell;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/SharedLinkCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/SharedLinkCell;Lorg/telegram/ui/Cells/SharedLinkCell$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;-><init>(Lorg/telegram/ui/Cells/SharedLinkCell;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->access$000(Lorg/telegram/ui/Cells/SharedLinkCell;)Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/SharedLinkCell;

    new-instance v1, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;-><init>(Lorg/telegram/ui/Cells/SharedLinkCell;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->access$002(Lorg/telegram/ui/Cells/SharedLinkCell;Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;)Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->access$000(Lorg/telegram/ui/Cells/SharedLinkCell;)Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedLinkCell;->access$104(Lorg/telegram/ui/Cells/SharedLinkCell;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;->currentPressCount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell$CheckForTap;->this$0:Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->access$000(Lorg/telegram/ui/Cells/SharedLinkCell;)Lorg/telegram/ui/Cells/SharedLinkCell$CheckForLongPress;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

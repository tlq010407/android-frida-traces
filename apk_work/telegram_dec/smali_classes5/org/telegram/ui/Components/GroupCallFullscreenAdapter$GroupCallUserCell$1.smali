.class Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$1;
.super Lorg/telegram/ui/Components/RLottieImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;-><init>(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Landroid/content/Context;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$1;->this$1:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iput-object p3, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$1;->val$this$0:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell$1;->this$1:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    return-void
.end method

.class Lorg/telegram/ui/ChatActivity$157;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->makeProgressForPaidMedia(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/browser/Browser$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$id:I


# direct methods
.method public static synthetic $r8$lambda$qsfAvZQhsw8oyH7mt_uoTBQjRHk(Lorg/telegram/ui/ChatActivity$157;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$157;->lambda$end$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$157;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$157;->val$id:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$157;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private synthetic lambda$end$0(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$157;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$54600(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$157;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$54900(Lorg/telegram/ui/ChatActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ChatActivity$157;->val$id:I

    new-instance v0, Lorg/telegram/ui/ChatActivity$157$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$157$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$157;I)V

    const-wide/16 v1, 0xf0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$157;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$157;->val$id:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$54602(Lorg/telegram/ui/ChatActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$157;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$54702(Lorg/telegram/ui/ChatActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$157;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$55002(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$157;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

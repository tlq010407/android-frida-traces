.class Lorg/telegram/ui/SessionBottomSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_authorization;ZLorg/telegram/ui/SessionBottomSheet$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SessionBottomSheet;

.field final synthetic val$session:Lorg/telegram/tgnet/TLRPC$TL_authorization;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SessionBottomSheet$3;->this$0:Lorg/telegram/ui/SessionBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/SessionBottomSheet$3;->val$session:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/SessionBottomSheet$3;->this$0:Lorg/telegram/ui/SessionBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/SessionBottomSheet$3;->val$session:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/SessionBottomSheet;->access$000(Lorg/telegram/ui/SessionBottomSheet;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.class public final synthetic Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Peer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->$r8$lambda$ahrpdnzjq-SamvWbU4ZN-6B_y_g(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/tgnet/TLRPC$Peer;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda273;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$ReactionCount;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda273;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda273;->f$1:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda273;->f$2:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda273;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda273;->f$1:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda273;->f$2:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$WyIBA9uYwrU2BCigMDDkKYjsSlI(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;Landroid/view/View;)V

    return-void
.end method

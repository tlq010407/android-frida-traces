.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

.field public final synthetic f$1:Lorg/telegram/ui/Cells/ChatActionCell;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/Cells/ChatActionCell;

    iput p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/Cells/ChatActionCell;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->$r8$lambda$ioEb7CEdDO8T_XxWyKuLbhcQpOs(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;II)V

    return-void
.end method

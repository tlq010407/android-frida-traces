.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    iput-wide p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    iget-wide v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->$r8$lambda$6At7HxlLXF2s6tLXNEF0nRpj2C8(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/ArrayList;J)V

    return-void
.end method

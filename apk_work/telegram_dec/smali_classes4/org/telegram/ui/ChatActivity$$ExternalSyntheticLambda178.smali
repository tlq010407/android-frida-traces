.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field public final synthetic f$2:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$2:Lorg/telegram/messenger/VideoEditedInfo;

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$3:Z

    iput p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$4:I

    iput-boolean p6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$2:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$3:Z

    iget v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$4:I

    iget-boolean v5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda178;->f$5:Z

    move-object v6, p1

    check-cast v6, Ljava/lang/Long;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$ZPpG4muuC5SYXHpPm1OEtcTr6Ec(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/Long;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PollVotesAlert;

.field public final synthetic f$1:[Ljava/lang/Integer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$1:[Ljava/lang/Integer;

    iput p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$4:Lorg/telegram/ui/ChatActivity;

    iput-object p6, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$5:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$6:Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$1:[Ljava/lang/Integer;

    iget v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$4:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$5:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;->f$6:Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/PollVotesAlert;->$r8$lambda$oQcZ0biHtsQbLrAW1dga0Z5iaqs(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    return-void
.end method

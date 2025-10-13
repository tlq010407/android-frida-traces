.class public final synthetic Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;ILorg/telegram/tgnet/TLRPC$Message;JILorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

    iput p2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide p4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$3:J

    iput p6, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$4:I

    iput-object p7, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$3:J

    iget v5, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$4:I

    iget-object v6, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/messenger/MessagesStorage;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->$r8$lambda$6ByLbXWtLSrywXJkIIh9jsfGbCk(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;ILorg/telegram/tgnet/TLRPC$Message;JILorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

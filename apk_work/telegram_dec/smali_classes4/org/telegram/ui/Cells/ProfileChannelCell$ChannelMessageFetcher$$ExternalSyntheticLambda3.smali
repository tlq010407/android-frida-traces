.class public final synthetic Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesStorage;JII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$3:J

    iput p6, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$4:I

    iput p7, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$3:J

    iget v5, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$4:I

    iget v6, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;->f$5:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->$r8$lambda$KJ2EsupB6BmpM9ZQCTlPqMLhs9g(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesStorage;JII)V

    return-void
.end method

.class public final synthetic Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/ConferenceCall;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/voip/ConferenceCall;

    iput-object p2, p0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->$r8$lambda$EPPFIPPeha4qgoDBJ055mNmepyg(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-void
.end method


# virtual methods
.method public final sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->$r8$lambda$YeAnQ7DTg8l2pOk_jU4ySXWVauA(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$20;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$20;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$20;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$20;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$20;->$r8$lambda$n2FGU0LJXYcGxDmBIMrBMlmeiZA(Lorg/telegram/ui/Stories/PeerStoriesView$20;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V

    return-void
.end method

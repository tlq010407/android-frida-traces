.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iput-wide p2, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->$r8$lambda$BiBW_G8QxZ8C5PFSuqG-h_SPRak(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->$r8$lambda$-LXUfdVqgqjkn3OPlMUMJMISS-M(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

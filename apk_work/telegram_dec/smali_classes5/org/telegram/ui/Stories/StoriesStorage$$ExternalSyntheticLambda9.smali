.class public final synthetic Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesStorage;->$r8$lambda$oObnqwHhX94CgPGTFQagIu0JO2g(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)I

    move-result p1

    return p1
.end method

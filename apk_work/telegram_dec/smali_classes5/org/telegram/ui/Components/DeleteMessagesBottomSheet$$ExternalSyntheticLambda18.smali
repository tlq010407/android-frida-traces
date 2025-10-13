.class public final synthetic Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-void
.end method


# virtual methods
.method public synthetic and(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lj$/util/function/Predicate;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/tgnet/TLRPC$InputPeer;

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->$r8$lambda$3SJuYVy5cddzIttGg4mw2fuI1eA(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method

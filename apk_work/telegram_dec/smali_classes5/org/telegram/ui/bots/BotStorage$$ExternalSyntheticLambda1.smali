.class public final synthetic Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashSet;

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
    iget-object v0, p0, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashSet;

    check-cast p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    invoke-static {v0, p1}, Lorg/telegram/ui/bots/BotStorage;->$r8$lambda$WR9erIHrU4gsykerJmxz-H3I8b0(Ljava/util/HashSet;Lorg/telegram/ui/bots/BotStorage$StorageConfig;)Z

    move-result p1

    return p1
.end method

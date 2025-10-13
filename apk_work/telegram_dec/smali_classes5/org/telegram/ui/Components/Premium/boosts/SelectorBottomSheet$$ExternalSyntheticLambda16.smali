.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;->$r8$lambda$Dq3ULzRUqzqOxiV4UuaqkxZ-3Qo(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method

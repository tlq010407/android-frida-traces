.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda117;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/support/LongSparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda117;->f$0:Lorg/telegram/messenger/support/LongSparseIntArray;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda117;->f$0:Lorg/telegram/messenger/support/LongSparseIntArray;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$vVCm6WFQ5jw4QHXnAL2Z_FoTP3I(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

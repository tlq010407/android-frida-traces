.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$updates_Difference;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroidx/collection/LongSparseArray;

.field public final synthetic f$4:Landroidx/collection/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$updates_Difference;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$1:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$3:Landroidx/collection/LongSparseArray;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$4:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$1:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$3:Landroidx/collection/LongSparseArray;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda133;->f$4:Landroidx/collection/LongSparseArray;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$l-iI8l9vNNKWO5KFD1FSzOioqyQ(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$updates_Difference;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

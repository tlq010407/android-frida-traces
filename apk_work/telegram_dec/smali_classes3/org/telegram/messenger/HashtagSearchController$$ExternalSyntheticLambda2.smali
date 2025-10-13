.class public final synthetic Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/HashtagSearchController;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/HashtagSearchController;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;Lorg/telegram/tgnet/TLRPC$messages_Messages;Ljava/util/ArrayList;III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/HashtagSearchController;

    iput-object p2, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    iput-object p4, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-object p5, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    iput p6, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$5:I

    iput p7, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$6:I

    iput p8, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/HashtagSearchController;

    iget-object v1, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    iget-object v3, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$5:I

    iget v6, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$6:I

    iget v7, p0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;->f$7:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/HashtagSearchController;->$r8$lambda$BkVCw41UYJCc5DXPEBcZe4SqbAw(Lorg/telegram/messenger/HashtagSearchController;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;Lorg/telegram/tgnet/TLRPC$messages_Messages;Ljava/util/ArrayList;III)V

    return-void
.end method

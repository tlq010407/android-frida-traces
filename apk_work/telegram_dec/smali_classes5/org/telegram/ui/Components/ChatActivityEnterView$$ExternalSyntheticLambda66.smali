.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/messenger/MessageObject$SendAnimationData;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/Object;

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZILjava/lang/Object;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$3:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iput-boolean p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$4:Z

    iput p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$5:I

    iput-object p7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$6:Ljava/lang/Object;

    iput-boolean p8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$3:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$4:Z

    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$5:I

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$6:Ljava/lang/Object;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda66;->f$7:Z

    move-object v8, p1

    check-cast v8, Ljava/lang/Long;

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->$r8$lambda$bFQuOLxnBdCWDq68rKDy-DyM_9s(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZILjava/lang/Object;ZLjava/lang/Long;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Business/QuickRepliesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/Business/QuickRepliesController;

    iput-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;

    iput-object p5, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/Business/QuickRepliesController;

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;

    iget-object v4, p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Business/QuickRepliesController;->$r8$lambda$dfgudiwMI8b-gwgHvigQI9tvP6Q(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TranslateController;

.field public final synthetic f$1:Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingPollTranslation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/TranslateController;

    iput-object p2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    iput-object p3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-wide p5, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/TranslateController;

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    iget-object v2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-wide v4, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda19;->f$4:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$kDBxFABN5i24Zqo4lCSQgQhcodQ(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingPollTranslation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TranslateController;

.field public final synthetic f$1:Lorg/telegram/messenger/TranslateController$PendingTranslation;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingTranslation;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/TranslateController;

    iput-object p2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;->f$1:Lorg/telegram/messenger/TranslateController$PendingTranslation;

    iput-wide p3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;->f$2:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/messenger/TranslateController;

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;->f$1:Lorg/telegram/messenger/TranslateController$PendingTranslation;

    iget-wide v2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda17;->f$2:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$QLeOy5GHKIqxIHOsVPjE_pB6Whw(Lorg/telegram/messenger/TranslateController;Lorg/telegram/messenger/TranslateController$PendingTranslation;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

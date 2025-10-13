.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IJILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$0:I

    iput-wide p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$1:J

    iput p4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$2:I

    iput-object p5, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$0:I

    iget-wide v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$1:J

    iget v3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$2:I

    iget-object v4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$3:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    invoke-static/range {v0 .. v5}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$hCeDx9be2GajXP7GkrZsEFwlLuk(IJILjava/lang/String;Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/LoginActivity;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    iput-object p4, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda19;->f$4:Z

    move-object v5, p1

    check-cast v5, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity;->$r8$lambda$H8V3iSvacQOh8aGw7liiguAH3cs(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Ljava/lang/String;ZLcom/google/android/play/core/integrity/IntegrityTokenResponse;)V

    return-void
.end method

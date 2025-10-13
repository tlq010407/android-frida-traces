.class public final synthetic Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Landroid/os/Bundle;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/LoginActivity;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$2:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    iput-object p4, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$3:Landroid/os/Bundle;

    iput-boolean p5, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$2:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$3:Landroid/os/Bundle;

    iget-boolean v4, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda21;->f$4:Z

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity;->$r8$lambda$lt36BRd7H_5BIK1liEeqXG3jpsA(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$auth_SentCode;Landroid/os/Bundle;ZLcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SecretVoicePlayer;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SecretVoicePlayer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/SecretVoicePlayer;

    iput-object p2, p0, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/SecretVoicePlayer;

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/SecretVoicePlayer;->$r8$lambda$_Gx4bk4WfZjBSjbIsmxFPAkFXYA(Lorg/telegram/ui/SecretVoicePlayer;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;->$r8$lambda$YjEb7EpfCt3u5XAaSgWCr5-taIk(Lorg/telegram/ui/LoginActivity$LoginActivitySetupEmail;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_account$sendVerifyEmailCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

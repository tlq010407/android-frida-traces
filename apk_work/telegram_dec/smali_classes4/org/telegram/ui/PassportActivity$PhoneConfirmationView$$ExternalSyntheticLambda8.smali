.class public final synthetic Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$4:Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$2:Landroid/os/Bundle;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda8;->f$4:Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->$r8$lambda$RhiVe6euPle_BdhJty4Lkq2WKyU(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    return-void
.end method

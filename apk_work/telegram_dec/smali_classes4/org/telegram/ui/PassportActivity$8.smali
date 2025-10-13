.class Lorg/telegram/ui/PassportActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PassportActivity;->onPasswordDone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PassportActivity;

.field final synthetic val$req:Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;

.field final synthetic val$saved:Z

.field final synthetic val$textPassword:Ljava/lang/String;

.field final synthetic val$x_bytes:[B


# direct methods
.method public static synthetic $r8$lambda$-pkcqJj9ECs5DkeAS3Dv47EpwI0(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$generateNewSecret$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$47T2DFvJgErSOqg5UWq_rPYIfmg(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$512leeeXZVvw7ZAuUKewBLjdnGs(Lorg/telegram/ui/PassportActivity$8;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$16(ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7FF5vIBx69V1lY-ce247YLdWOfA(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$8wAtAcSujdshpqqU8W0HgXpUHNE(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$resetSecret$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Il6GFWlK2AeJA__204IOtyvHGc(Lorg/telegram/ui/PassportActivity$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$Eqpv5i_FPutaUQNKDy1FPpJ31qU(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$resetSecret$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IV_GzzYEgg9s47rdcOkahKg0lZc(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$generateNewSecret$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHZPwo2_IEGXBI2VzmLmPmz1WdM(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$resetSecret$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UVtyHscuAF42jADYfHHFTbfUf-0(Lorg/telegram/ui/PassportActivity$8;[BLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$generateNewSecret$8([BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0dnErPaM0xMqqO5-5yr1hVCcto(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iXmDpyZM05AxLNgISjV6LCJUzhA(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8;->lambda$generateNewSecret$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iwMABCbrAb4blvFxGKH1gLHD3Lk(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity$8;->lambda$resetSecret$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nmRdmdNsKvQlc9kYgpZgtgqkodU(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity$8;->lambda$generateNewSecret$6(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_D1Jm0CVa0IUg7OSO-HuZvsPjE(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/tl/TL_account$passwordSettings;Z[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$14(Lorg/telegram/tgnet/tl/TL_account$passwordSettings;Z[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$vc_AD66yAJui9FFx5BoTebKck4E(Lorg/telegram/ui/PassportActivity$8;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$10(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wuLaFIql6iY5js3MykyfGPQCs0w(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity$8;->lambda$run$15(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PassportActivity;Z[BLorg/telegram/tgnet/tl/TL_account$getPasswordSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/PassportActivity$8;->val$saved:Z

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity$8;->val$x_bytes:[B

    iput-object p4, p0, Lorg/telegram/ui/PassportActivity$8;->val$req:Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity$8;->val$textPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateNewSecret()V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->val$x_bytes:[B

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8;->val$textPassword:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PassportActivity$8;[BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$generateNewSecret$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p1, p2}, Lorg/telegram/ui/PassportActivity;->access$7302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->generateNewSecret()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$generateNewSecret$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$generateNewSecret$6(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "SRP_ID_INVALID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$15100(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PassportActivity$8;)V

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/ui/PassportActivity;->access$1302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/tl/TL_account$authorizationForm;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->openRequestInterface()V

    return-void
.end method

.method private synthetic lambda$generateNewSecret$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$generateNewSecret$8([BLjava/lang/String;)V
    .locals 8

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->setSeed([B)V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-static {p1, v2, v3, v4, v1}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    :cond_0
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14900(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/telegram/ui/PassportActivity;->access$7702(Lorg/telegram/ui/PassportActivity;[B)[B

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/PassportActivity;->access$7002(Lorg/telegram/ui/PassportActivity;J)J

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;->salt:[B

    invoke-static {p2, v2}, Lorg/telegram/messenger/Utilities;->computePBKDF2([B[B)[B

    move-result-object p2

    invoke-static {v1, p2}, Lorg/telegram/ui/PassportActivity;->access$7602(Lorg/telegram/ui/PassportActivity;[B)[B

    const/16 p2, 0x20

    new-array v2, p2, [B

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7600(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x10

    new-array v4, v1, [B

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v5}, Lorg/telegram/ui/PassportActivity;->access$7600(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v5

    invoke-static {v5, p2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v1

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object p2

    array-length v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 p2, 0x0

    move-object v3, v4

    move v4, p2

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    iget-object p2, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;-><init>()V

    iput-object v1, p2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    iget-object p2, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret:[B

    iget-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$7000(Lorg/telegram/ui/PassportActivity;)J

    move-result-wide v1

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret_id:J

    iget-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget p2, p1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$15000(Lorg/telegram/ui/PassportActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PassportActivity$8;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$resetSecret$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p1, p2}, Lorg/telegram/ui/PassportActivity;->access$7302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->resetSecret()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resetSecret$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$resetSecret$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "SRP_ID_INVALID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$15200(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PassportActivity$8;)V

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->generateNewSecret()V

    return-void
.end method

.method private synthetic lambda$resetSecret$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$run$10(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$run$11()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$run$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;-><init>()V

    invoke-static {p2, v0}, Lorg/telegram/ui/PassportActivity;->access$1302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/tl/TL_account$authorizationForm;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object p2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$1300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->openRequestInterface()V

    goto :goto_2

    :cond_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "APP_VERSION_OUTDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v2, p2}, Lorg/telegram/ui/PassportActivity;->access$7800(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PassportActivity;->access$4900(Lorg/telegram/ui/PassportActivity;ZZ)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$run$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$run$14(Lorg/telegram/tgnet/tl/TL_account$passwordSettings;Z[B)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$passwordSettings;->email:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/PassportActivity;->access$5102(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14500(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PassportActivity;->access$7602(Lorg/telegram/ui/PassportActivity;[B)[B

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7600(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PassportActivity;->access$14600(Lorg/telegram/ui/PassportActivity;[B[B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$7000(Lorg/telegram/ui/PassportActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PassportActivity;->checkSecret([BLjava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_3

    array-length p1, p3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7000(Lorg/telegram/ui/PassportActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$12600(Lorg/telegram/ui/PassportActivity;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_2

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getAllSecureValues;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getAllSecureValues;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$14800(Lorg/telegram/ui/PassportActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PassportActivity$8;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->openRequestInterface()V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    if-eqz p2, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14700(Lorg/telegram/ui/PassportActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->resetSavedPassword()V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/PassportActivity;->access$14102(Lorg/telegram/ui/PassportActivity;I)I

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14200(Lorg/telegram/ui/PassportActivity;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$1300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->errors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->resetSecret()V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$8;->generateNewSecret()V

    :goto_2
    return-void
.end method

.method private synthetic lambda$run$15(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V
    .locals 4

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$passwordSettings;

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$passwordSettings;->secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret:[B

    invoke-static {v2, v0}, Lorg/telegram/ui/PassportActivity;->access$7702(Lorg/telegram/ui/PassportActivity;[B)[B

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_account$passwordSettings;->secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret_id:J

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/PassportActivity;->access$7002(Lorg/telegram/ui/PassportActivity;J)J

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$passwordSettings;->secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoSHA512;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoSHA512;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoSHA512;->salt:[B

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p2, v0}, Lorg/telegram/messenger/Utilities;->computeSHA512([B[B[B)[B

    move-result-object p2

    invoke-static {v1, p2}, Lorg/telegram/ui/PassportActivity;->access$7602(Lorg/telegram/ui/PassportActivity;[B)[B

    goto :goto_1

    :cond_0
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;->salt:[B

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;->salt:[B

    invoke-static {p2, v0}, Lorg/telegram/messenger/Utilities;->computePBKDF2([B[B)[B

    move-result-object p2

    invoke-static {v2, p2}, Lorg/telegram/ui/PassportActivity;->access$7602(Lorg/telegram/ui/PassportActivity;[B)[B

    move-object v0, v1

    goto :goto_1

    :cond_1
    instance-of p2, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoUnknown;

    if-eqz p2, :cond_2

    new-instance p1, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PassportActivity$8;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-array v0, v1, [B

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;->salt:[B

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;->salt:[B

    invoke-static {p2, v0}, Lorg/telegram/messenger/Utilities;->computePBKDF2([B[B)[B

    move-result-object p2

    invoke-static {v2, p2}, Lorg/telegram/ui/PassportActivity;->access$7602(Lorg/telegram/ui/PassportActivity;[B)[B

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-array p2, v1, [B

    move-object v0, p2

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/PassportActivity;->access$7702(Lorg/telegram/ui/PassportActivity;[B)[B

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    const-wide/16 v1, 0x0

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/PassportActivity;->access$7002(Lorg/telegram/ui/PassportActivity;J)J

    :goto_1
    new-instance p2, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1, p3, v0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/tl/TL_account$passwordSettings;Z[B)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$run$16(ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14000(Lorg/telegram/ui/PassportActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->resetSavedPassword()V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/PassportActivity;->access$14102(Lorg/telegram/ui/PassportActivity;I)I

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14200(Lorg/telegram/ui/PassportActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14300(Lorg/telegram/ui/PassportActivity;)[Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$14300(Lorg/telegram/ui/PassportActivity;)[Landroid/view/ViewGroup;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$2500(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$2500(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PassportActivity;->access$4900(Lorg/telegram/ui/PassportActivity;ZZ)V

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PASSWORD_HASH_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/PassportActivity;->access$14400(Lorg/telegram/ui/PassportActivity;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "FLOOD_WAIT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ge p1, p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "Seconds"

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    div-int/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "Minutes"

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lorg/telegram/ui/PassportActivity;->access$7800(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/PassportActivity;->access$7800(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$run$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p1, p2}, Lorg/telegram/ui/PassportActivity;->access$7302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/PassportActivity;->access$4500(Lorg/telegram/ui/PassportActivity;Z)V

    :cond_0
    return-void
.end method

.method private openRequestInterface()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$2500(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PassportActivity$8;->val$saved:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$12400(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->val$x_bytes:[B

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity;->access$7600(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/UserConfig;->savePassword([B[B)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$2500(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/PassportActivity;->access$12502(Lorg/telegram/ui/PassportActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$12600(Lorg/telegram/ui/PassportActivity;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    const/16 v1, 0x8

    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    new-instance v0, Lorg/telegram/ui/PassportActivity;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$12600(Lorg/telegram/ui/PassportActivity;)J

    move-result-wide v5

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$12700(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$12800(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$12900(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$13000(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$13100(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$1300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    move-result-object v12

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v13

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lorg/telegram/ui/PassportActivity;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$5100(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PassportActivity;->access$5102(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$13300(Lorg/telegram/ui/PassportActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PassportActivity;->access$13202(Lorg/telegram/ui/PassportActivity;I)I

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7600(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PassportActivity;->access$7602(Lorg/telegram/ui/PassportActivity;[B)[B

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7700(Lorg/telegram/ui/PassportActivity;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PassportActivity;->access$7702(Lorg/telegram/ui/PassportActivity;[B)[B

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7000(Lorg/telegram/ui/PassportActivity;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/PassportActivity;->access$7002(Lorg/telegram/ui/PassportActivity;J)J

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$13400(Lorg/telegram/ui/PassportActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PassportActivity;->access$13402(Lorg/telegram/ui/PassportActivity;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$13500(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$13600(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/PassportActivity;->access$13702(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/PassportActivity;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :goto_2
    return-void
.end method

.method private resetSecret()V
    .locals 6

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8;->val$x_bytes:[B

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v3}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v5}, Lorg/telegram/ui/PassportActivity;->access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-static {v2, v3, v4, v5, v1}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret:[B

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoUnknown;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoUnknown;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret_id:J

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->access$13800(Lorg/telegram/ui/PassportActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8;->val$req:Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;

    new-instance v2, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PassportActivity$8;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "SRP_ID_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity$8;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {p2}, Lorg/telegram/ui/PassportActivity;->access$13900(Lorg/telegram/ui/PassportActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/PassportActivity$8;->val$saved:Z

    new-instance v1, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PassportActivity$8;Z)V

    const/16 v0, 0x8

    invoke-virtual {p2, p1, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8;->val$textPassword:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/telegram/ui/PassportActivity$8;->val$saved:Z

    new-instance v2, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/PassportActivity$8;->val$saved:Z

    new-instance v0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PassportActivity$8;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

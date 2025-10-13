.class public abstract Lorg/telegram/tgnet/tl/TL_account$Password;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

.field public email_unconfirmed_pattern:Ljava/lang/String;

.field public flags:I

.field public has_password:Z

.field public has_recovery:Z

.field public has_secure_values:Z

.field public hint:Ljava/lang/String;

.field public login_email_pattern:Ljava/lang/String;

.field public new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

.field public new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

.field public pending_reset_date:I

.field public secure_random:[B

.field public srp_B:[B

.field public srp_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$Password;
    .locals 1

    const v0, -0x6a84af05

    if-eq p1, v0, :cond_1

    const v0, 0x185b184f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_password_layer144;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_password_layer144;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_password;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_password;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in account_Password"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_4
    return-object v0
.end method

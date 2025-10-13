.class public abstract Lorg/telegram/tgnet/TLRPC$PrivacyKey;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrivacyKey"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyForwards;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyForwards;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAddedByPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAddedByPhone;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneP2P;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneP2P;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStarGiftsAutoSave;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStarGiftsAutoSave;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyBirthday;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyBirthday;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyNoPaidMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyNoPaidMessages;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyVoiceMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyVoiceMessages;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneNumber;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneNumber;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyAbout;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyProfilePhoto;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in PrivacyKey"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69eae013 -> :sswitch_c
        -0x5b79489f -> :sswitch_b
        -0x43d154d0 -> :sswitch_a
        -0x2e651b93 -> :sswitch_9
        0x697f414 -> :sswitch_8
        0x17d348d2 -> :sswitch_7
        0x2000a518 -> :sswitch_6
        0x2ca4fdf8 -> :sswitch_5
        0x39491cc8 -> :sswitch_4
        0x3d662b7b -> :sswitch_3
        0x42ffd42b -> :sswitch_2
        0x500e6dfa -> :sswitch_1
        0x69ec56a3 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalPrivacySettings"
.end annotation


# instance fields
.field public archive_and_mute_new_noncontact_peers:Z

.field public disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

.field public display_gifts_button:Z

.field public flags:I

.field public hide_read_marks:Z

.field public keep_archived_folders:Z

.field public keep_archived_unmuted:Z

.field public new_noncontact_peers_require_premium:Z

.field public noncontact_peers_paid_stars:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;
    .locals 1

    const v0, -0x362720e4    # -1776611.5f

    if-eq p1, v0, :cond_1

    const v0, -0x1be4cb1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings_layer200;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings_layer200;-><init>()V

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

    const-string p1, "can\'t parse magic %x in GlobalPrivacySettings"

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

.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaGeoLive"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->heading:I

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->period:I

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x68e057bd

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->heading:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method

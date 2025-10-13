.class public abstract Lorg/telegram/tgnet/TLRPC$PhotoSize;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhotoSize"
.end annotation


# instance fields
.field public bytes:[B

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public h:I

.field public location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field public size:I

.field public type:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(JJJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 3

    const/4 v0, 0x0

    sparse-switch p7, :sswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive_layer127;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize_layer127;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;-><init>()V

    :goto_0
    if-nez v1, :cond_1

    if-nez p8, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in PhotoSize"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1, p6, p8}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    iget-object p6, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez p6, :cond_6

    iget-object p6, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_5

    const-wide/16 p6, 0x0

    cmp-long p8, p0, p6

    if-nez p8, :cond_2

    cmp-long p8, p2, p6

    if-nez p8, :cond_2

    cmp-long p8, p4, p6

    if-eqz p8, :cond_5

    :cond_2
    new-instance p8, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p8}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object p8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    cmp-long v2, p0, p6

    if-eqz v2, :cond_3

    neg-long p0, p0

    iput-wide p0, p8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_2
    iput p0, p8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    goto :goto_3

    :cond_3
    cmp-long p0, p2, p6

    if-eqz p0, :cond_4

    neg-long p0, p2

    iput-wide p0, p8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit16 p0, p0, 0x3e8

    goto :goto_2

    :cond_4
    cmp-long p0, p4, p6

    if-eqz p0, :cond_6

    neg-long p0, p4

    iput-wide p0, p8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit16 p0, p0, 0x7d0

    goto :goto_2

    :cond_5
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_6
    :goto_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x27deb2bf -> :sswitch_8
        -0x1f4f43d2 -> :sswitch_7
        -0x1658cb06 -> :sswitch_6
        -0x5c1046b -> :sswitch_5
        0x21e1ad6 -> :sswitch_4
        0xe17e23c -> :sswitch_3
        0x5aa86a51 -> :sswitch_2
        0x75c78e60 -> :sswitch_1
        0x77bfb61b -> :sswitch_0
    .end sparse-switch
.end method

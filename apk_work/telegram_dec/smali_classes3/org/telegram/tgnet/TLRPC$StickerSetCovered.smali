.class public abstract Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StickerSetCovered"
.end annotation


# instance fields
.field public cover:Lorg/telegram/tgnet/TLRPC$Document;

.field public covers:Ljava/util/ArrayList;

.field public set:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetMultiCovered;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetMultiCovered;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered_layer146;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered_layer146;-><init>()V

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

    const-string p1, "can\'t parse magic %x in StickerSetCovered"

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
        0x1aed5ee5 -> :sswitch_4
        0x3407e51b -> :sswitch_3
        0x40d13c0e -> :sswitch_2
        0x6410a5d2 -> :sswitch_1
        0x77b15d1c -> :sswitch_0
    .end sparse-switch
.end method

.class public Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;
.super Lorg/telegram/tgnet/TLRPC$PhotoSize;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoSizeFromPhoto"
.end annotation


# instance fields
.field public final inputPhoto:Lorg/telegram/tgnet/TLRPC$InputPhoto;

.field public final photo:Lorg/telegram/tgnet/TLRPC$Photo;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    return-void
.end method

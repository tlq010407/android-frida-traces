.class public Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# static fields
.field private static final MODE_CBC:I = 0x1

.field private static final MODE_CTR:I


# instance fields
.field private currentMode:I

.field private fileOffset:I

.field private iv:[B

.field private key:[B


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .line 0
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x20

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->currentMode:I

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    invoke-virtual {v2, p2, v1, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    iget-object p1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/SecureDocumentKey;)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x20

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->currentMode:I

    iget-object v1, p2, Lorg/telegram/messenger/SecureDocumentKey;->file_key:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p2, Lorg/telegram/messenger/SecureDocumentKey;->file_iv:[B

    iget-object p2, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    array-length v0, p2

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static decryptBytesWithKeyFile([BIILjava/io/File;)V
    .locals 8

    .line 0
    const/16 v0, 0x20

    new-array v2, v0, [B

    const/16 v1, 0x10

    new-array v3, v1, [B

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {v4, v2, p3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v4, v3, p3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    int-to-long v5, p2

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    return-void
.end method

.method public static decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    .locals 7

    .line 0
    iget-object v1, p3, Lorg/telegram/messenger/SecureDocumentKey;->file_key:[B

    iget-object v2, p3, Lorg/telegram/messenger/SecureDocumentKey;->file_iv:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p3

    iget v1, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->currentMode:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    iget v1, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    if-nez v1, :cond_0

    const/16 v10, 0x20

    new-array v11, v10, [B

    const/4 v12, 0x0

    invoke-super {v0, v11, v12, v10}, Ljava/io/FileInputStream;->read([BII)I

    iget-object v2, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    iget-object v3, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    iget v6, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    iget v1, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    aget-byte v1, v11, v12

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, v10

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->skip(J)J

    :cond_0
    invoke-super/range {p0 .. p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    iget v1, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->currentMode:I

    if-ne v1, v9, :cond_1

    iget-object v2, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    iget-object v3, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    iget v6, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v12, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->key:[B

    iget-object v13, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->iv:[B

    int-to-long v1, v8

    iget v3, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    move-object/from16 v11, p1

    move/from16 v14, p2

    move-wide v15, v1

    move/from16 v17, v3

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    :cond_2
    :goto_0
    iget v1, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    return v10
.end method

.method public skip(J)J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->fileOffset:I

    invoke-super {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.class public Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public avcLevelIndication:I

.field public avcProfileIndication:I

.field public bitDepthChromaMinus8:I

.field public bitDepthChromaMinus8PaddingBits:I

.field public bitDepthLumaMinus8:I

.field public bitDepthLumaMinus8PaddingBits:I

.field public chromaFormat:I

.field public chromaFormatPaddingBits:I

.field public configurationVersion:I

.field public hasExts:Z

.field public lengthSizeMinusOne:I

.field public lengthSizeMinusOnePaddingBits:I

.field public numberOfSequenceParameterSetsPaddingBits:I

.field public pictureParameterSets:Ljava/util/List;

.field public profileCompatibility:I

.field public sequenceParameterSetExts:Ljava/util/List;

.field public sequenceParameterSets:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    const/16 v0, 0x3f

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    iput v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    const/16 v1, 0x3f

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/16 v1, 0x1f

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->configurationVersion:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->profileCompatibility:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcLevelIndication:I

    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    iput v3, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    iput v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    iput v5, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v1, :cond_5

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v7, v1

    const/4 v1, 0x0

    :goto_1
    int-to-long v9, v1

    cmp-long v6, v9, v7

    if-ltz v6, :cond_4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v6, 0x4

    if-ge v1, v6, :cond_0

    iput-boolean v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    :cond_0
    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x64

    if-eq v1, v6, :cond_1

    const/16 v6, 0x6e

    if-eq v1, v6, :cond_1

    const/16 v6, 0x7a

    if-eq v1, v6, :cond_1

    const/16 v6, 0x90

    if-ne v1, v6, :cond_3

    :cond_1
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v1, v1

    :goto_2
    int-to-long v3, v0

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    iput p1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    iput p1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    iput p1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    :goto_3
    return-void

    :cond_4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 7

    iget v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->configurationVersion:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->profileCompatibility:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcLevelIndication:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget-object v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x5

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    invoke-static {p1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v6, v0

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v6, v1

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method public getContentSize()J
    .locals 8

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x6

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x2

    if-nez v3, :cond_4

    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v3, 0x64

    if-eq v0, v3, :cond_0

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_2

    :cond_0
    const-wide/16 v6, 0x4

    add-long/2addr v1, v6

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-long/2addr v1, v4

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    goto :goto_2

    :cond_2
    :goto_3
    return-wide v1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-long/2addr v1, v4

    array-length v0, v0

    int-to-long v6, v0

    add-long/2addr v1, v6

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    add-long/2addr v1, v4

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AvcDecoderConfigurationRecord{configurationVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->configurationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avcProfileIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profileCompatibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->profileCompatibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avcLevelIndication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->avcLevelIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lengthSizeMinusOne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasExts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->hasExts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chromaFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepthLumaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepthChromaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lengthSizeMinusOnePaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfSequenceParameterSetsPaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chromaFormatPaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepthLumaMinus8PaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepthChromaMinus8PaddingBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

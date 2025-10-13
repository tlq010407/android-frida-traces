.class public Lorg/telegram/messenger/video/HevcConfigurationBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "hvcC"


# instance fields
.field private hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "hvcC"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    invoke-direct {v0}, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->parse(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/telegram/messenger/video/HevcConfigurationBox;

    iget-object v2, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget-object p1, p1, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getArrays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget-object v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    return-object v0
.end method

.method public getAvgFrameRate()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->avgFrameRate:I

    return v0
.end method

.method public getBitDepthChromaMinus8()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    return v0
.end method

.method public getBitDepthLumaMinus8()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    return v0
.end method

.method public getChromaFormat()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->chromaFormat:I

    return v0
.end method

.method public getConfigurationVersion()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->configurationVersion:I

    return v0
.end method

.method public getConstantFrameRate()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->constantFrameRate:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->getSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGeneral_constraint_indicator_flags()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget-wide v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    return-wide v0
.end method

.method public getGeneral_level_idc()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->general_level_idc:I

    return v0
.end method

.method public getGeneral_profile_compatibility_flags()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget-wide v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    return-wide v0
.end method

.method public getGeneral_profile_idc()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->general_profile_idc:I

    return v0
.end method

.method public getGeneral_profile_space()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->general_profile_space:I

    return v0
.end method

.method public getHevcDecoderConfigurationRecord()Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    return-object v0
.end method

.method public getLengthSizeMinusOne()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    return v0
.end method

.method public getMin_spatial_segmentation_idc()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    return v0
.end method

.method public getNumTemporalLayers()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    return v0
.end method

.method public getParallelismType()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->parallelismType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGeneral_tier_flag()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget-boolean v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    return v0
.end method

.method public isTemporalIdNested()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    iget-boolean v0, v0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    return v0
.end method

.method public setHevcDecoderConfigurationRecord(Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;

    return-void
.end method

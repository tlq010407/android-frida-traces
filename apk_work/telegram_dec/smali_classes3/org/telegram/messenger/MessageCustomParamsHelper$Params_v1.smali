.class Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageCustomParamsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params_v1"
.end annotation


# static fields
.field private static final VERSION:I = 0x1


# instance fields
.field flags:I

.field final message:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method private constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 7

    .line 0
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iput-object p1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_4

    const/16 v2, 0x10

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    if-eqz v2, :cond_5

    const/16 v2, 0x20

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/16 v2, 0x40

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_7

    const/16 v0, 0x80

    :cond_7
    or-int p1, v1, v0

    iput p1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageCustomParamsHelper$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;-><init>(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/messenger/TranslateController$PollText;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/messenger/TranslateController$PollText;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v1, v1, -0x3

    :goto_0
    iput v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    invoke-interface {p1, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v1, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->translatedPoll:Lorg/telegram/messenger/TranslateController$PollText;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/TranslateController$PollText;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MessageCustomParamsHelper$Params_v1;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_7
    return-void
.end method

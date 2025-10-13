.class public Lorg/telegram/messenger/TranslateController$PollText;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/TranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PollText"
.end annotation


# static fields
.field public static final constructor:I = 0x24953ab8


# instance fields
.field public answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PollAnswer;",
            ">;"
        }
    .end annotation
.end field

.field public question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/messenger/TranslateController$PollText;
    .locals 1

    const v0, 0x24953ab8

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TranslatedPoll"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/messenger/TranslateController$PollText;

    invoke-direct {p1}, Lorg/telegram/messenger/TranslateController$PollText;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/TranslateController$PollText;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method

.method public static fromMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/TranslateController$PollText;
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    invoke-static {p0}, Lorg/telegram/messenger/TranslateController$PollText;->fromPoll(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;)Lorg/telegram/messenger/TranslateController$PollText;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromPoll(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;)Lorg/telegram/messenger/TranslateController$PollText;
    .locals 6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    new-instance v1, Lorg/telegram/messenger/TranslateController$PollText;

    invoke-direct {v1}, Lorg/telegram/messenger/TranslateController$PollText;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v2, v1, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;-><init>()V

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v3, v1, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    :cond_1
    return-object v1
.end method

.method public static isFullyTranslated(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/TranslateController$PollText;)Z
    .locals 5

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p1, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    iget-object v2, p1, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eq p0, v2, :cond_6

    return v3

    :cond_6
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget-object p1, p1, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p0, p1, :cond_7

    return v3

    :cond_7
    return v1
.end method


# virtual methods
.method public length()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/messenger/TranslateController$PollText$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/messenger/TranslateController$PollText$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    :cond_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x24953ab8

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$PollText;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$PollText;->answers:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_4
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$PollText;->solution:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_5
    return-void
.end method

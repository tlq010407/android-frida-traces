.class Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryCustomParamsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params_v1"
.end annotation


# instance fields
.field flags:I

.field final storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;


# direct methods
.method private constructor <init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :cond_2
    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryCustomParamsHelper$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->detectedLng:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCustomParamsHelper$Params_v1;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

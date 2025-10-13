.class public Lorg/telegram/tgnet/Vector;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/tgnet/Vector$TLDeserializer;,
        Lorg/telegram/tgnet/Vector$Int;
    }
.end annotation


# instance fields
.field private final itemDeserializer:Lorg/telegram/tgnet/Vector$TLDeserializer;

.field public final objects:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/tgnet/Vector;->itemDeserializer:Lorg/telegram/tgnet/Vector$TLDeserializer;

    return-void
.end method

.method public static TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;
    .locals 1

    const v0, 0x1cb5c415

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "can\'t parse magic %x in Vector"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/Vector;

    invoke-direct {p1, p3}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method

.method public static TLDeserializeInt(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/Vector;
    .locals 1

    const v0, 0x1cb5c415

    if-eq p1, v0, :cond_1

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

    const-string p1, "can\'t parse magic %x in StarGift"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p1, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method

.method public static TLDeserializeLong(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/Vector;
    .locals 1

    const v0, 0x1cb5c415

    if-eq p1, v0, :cond_1

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

    const-string p1, "can\'t parse magic %x in StarGift"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p1, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method

.method public static deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v2

    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_1

    if-nez p2, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Vector"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;
    .locals 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v2

    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_1

    if-nez p2, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Vector"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p0, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v4

    invoke-interface {p1, p0, v4, p2}, Lorg/telegram/tgnet/Vector$TLDeserializer;->deserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static deserializeByteArray(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/tgnet/InputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/messenger/Utilities$CallbackReturn;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 2

    .line 0
    const v0, 0x1cb5c415

    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v1, p0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V
    .locals 1

    .line 0
    const v0, 0x1cb5c415

    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 5

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/tgnet/Vector;->itemDeserializer:Lorg/telegram/tgnet/Vector$TLDeserializer;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v4

    invoke-interface {v3, p1, v4, p2}, Lorg/telegram/tgnet/Vector$TLDeserializer;->deserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method

.method public toIntArray()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    instance-of v3, v2, Lorg/telegram/tgnet/Vector$Int;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/tgnet/Vector$Int;

    iget v2, v2, Lorg/telegram/tgnet/Vector$Int;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

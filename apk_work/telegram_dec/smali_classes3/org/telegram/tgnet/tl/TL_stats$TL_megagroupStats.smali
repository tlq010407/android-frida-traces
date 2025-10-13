.class public Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public actions_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

.field public growth_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

.field public languages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

.field public members:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

.field public members_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

.field public messages:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

.field public messages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

.field public new_members_by_source_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

.field public period:Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;

.field public posters:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

.field public top_admins:Ljava/util/ArrayList;

.field public top_hours_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

.field public top_inviters:Ljava/util/ArrayList;

.field public top_posters:Ljava/util/ArrayList;

.field public users:Ljava/util/ArrayList;

.field public viewers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

.field public weekdays_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_posters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_admins:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;
    .locals 1

    const v0, -0x108006ea

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

    const-string p1, "can\'t parse magic %x in TL_stats_megagroupStats"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->period:Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->members:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->messages:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->viewers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->posters:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->growth_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->members_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->new_members_by_source_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->languages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->messages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->actions_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_hours_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->weekdays_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_posters:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_admins:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x108006ea

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->period:Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->members:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->messages:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->viewers:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->posters:Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stats$TL_statsAbsValueAndPrev;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->growth_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->members_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->new_members_by_source_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->languages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->messages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->actions_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_hours_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->weekdays_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method

.class public final Lj$/time/zone/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lj$/time/LocalDateTime;

.field private final b:Lj$/time/ZoneOffset;

.field private final c:Lj$/time/ZoneOffset;


# direct methods
.method constructor <init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lj$/time/LocalDateTime;->u(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    iput-object p3, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    iput-object p4, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    return-void
.end method

.method constructor <init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    iput-object p2, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    iput-object p3, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lj$/time/zone/a;

    .line 0
    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v0

    .line 0
    iget-object v1, p1, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    .line 0
    iget-object p1, p1, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1, p1}, Lj$/time/LocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object p1

    .line 0
    invoke-virtual {v0, p1}, Lj$/time/Instant;->m(Lj$/time/Instant;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/zone/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/zone/a;

    iget-object v1, p1, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    iget-object v3, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v3, v1}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v3}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    iget-object p1, p1, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v1, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f()Lj$/time/LocalDateTime;
    .locals 3

    .line 0
    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 0
    iget-object v2, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v2, v0, v1}, Lj$/time/LocalDateTime;->v(J)Lj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lj$/time/LocalDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0}, Lj$/time/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Lj$/time/d;
    .locals 2

    .line 0
    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 0
    invoke-static {v0, v1}, Lj$/time/d;->j(J)Lj$/time/d;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lj$/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final k()Lj$/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/LocalDateTime;->w(Lj$/time/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method final m()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lj$/time/zone/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Lj$/time/ZoneOffset;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transition["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lj$/time/zone/a;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    goto :goto_0

    :cond_0
    const-string v1, "Overlap"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->a:Lj$/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

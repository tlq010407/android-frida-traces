.class final Lj$/time/a;
.super Lj$/time/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lj$/time/ZoneId;


# direct methods
.method constructor <init>(Lj$/time/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Lj$/time/b;-><init>()V

    iput-object p1, p0, Lj$/time/a;->a:Lj$/time/ZoneId;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Lj$/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lj$/time/a;->a:Lj$/time/ZoneId;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/time/a;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/a;

    iget-object p1, p1, Lj$/time/a;->a:Lj$/time/ZoneId;

    iget-object v0, p0, Lj$/time/a;->a:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/time/a;->a:Lj$/time/ZoneId;

    invoke-virtual {v0}, Lj$/time/ZoneId;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemClock["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj$/time/a;->a:Lj$/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

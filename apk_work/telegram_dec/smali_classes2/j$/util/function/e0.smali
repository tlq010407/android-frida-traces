.class public final synthetic Lj$/util/function/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# instance fields
.field public final synthetic a:Lj$/util/function/f0;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/e0;->a:Lj$/util/function/f0;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/f0;)Ljava/util/function/ObjDoubleConsumer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/function/d0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/function/d0;

    iget-object p0, p0, Lj$/util/function/d0;->a:Ljava/util/function/ObjDoubleConsumer;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/function/e0;

    invoke-direct {v0, p0}, Lj$/util/function/e0;-><init>(Lj$/util/function/f0;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;D)V
    .locals 1

    iget-object v0, p0, Lj$/util/function/e0;->a:Lj$/util/function/f0;

    invoke-interface {v0, p1, p2, p3}, Lj$/util/function/f0;->accept(Ljava/lang/Object;D)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/function/e0;->a:Lj$/util/function/f0;

    instance-of v1, p1, Lj$/util/function/e0;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/function/e0;

    iget-object p1, p1, Lj$/util/function/e0;->a:Lj$/util/function/f0;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/function/e0;->a:Lj$/util/function/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

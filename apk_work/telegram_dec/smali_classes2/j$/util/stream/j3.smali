.class final Lj$/util/stream/j3;
.super Lj$/util/stream/k3;
.source "SourceFile"

# interfaces
.implements Lj$/util/J;


# direct methods
.method constructor <init>(Lj$/util/J;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/k3;-><init>(Lj$/util/M;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/J;JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lj$/util/stream/k3;-><init>(Lj$/util/M;JJJJ)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->h(Lj$/util/J;Lj$/util/function/Consumer;)V

    return-void
.end method

.method protected final b(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;
    .locals 11

    move-object v1, p1

    check-cast v1, Lj$/util/J;

    .line 0
    new-instance v10, Lj$/util/stream/j3;

    move-object v0, v10

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lj$/util/stream/j3;-><init>(Lj$/util/J;JJJJ)V

    return-object v10
.end method

.method protected final f()Ljava/lang/Object;
    .locals 2

    .line 0
    new-instance v0, Lj$/util/stream/D0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj$/util/stream/D0;-><init>(I)V

    return-object v0
.end method

.method public final synthetic s(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/A;->n(Lj$/util/J;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

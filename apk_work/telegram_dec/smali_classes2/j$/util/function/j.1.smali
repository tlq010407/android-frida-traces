.class public final synthetic Lj$/util/function/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/m;


# instance fields
.field public final synthetic a:Lj$/util/function/m;

.field public final synthetic b:Lj$/util/function/m;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/m;Lj$/util/function/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/j;->a:Lj$/util/function/m;

    iput-object p2, p0, Lj$/util/function/j;->b:Lj$/util/function/m;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/function/j;->a:Lj$/util/function/m;

    invoke-interface {v0, p1, p2}, Lj$/util/function/m;->accept(D)V

    iget-object v0, p0, Lj$/util/function/j;->b:Lj$/util/function/m;

    invoke-interface {v0, p1, p2}, Lj$/util/function/m;->accept(D)V

    return-void
.end method

.method public final synthetic k(Lj$/util/function/m;)Lj$/util/function/m;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Lj$/util/function/m;Lj$/util/function/m;)Lj$/util/function/j;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lj$/util/function/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/T;


# instance fields
.field public final synthetic a:Lj$/util/function/T;

.field public final synthetic b:Lj$/util/function/T;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/T;Lj$/util/function/T;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/P;->a:Lj$/util/function/T;

    iput-object p2, p0, Lj$/util/function/P;->b:Lj$/util/function/T;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/function/P;->a:Lj$/util/function/T;

    invoke-interface {v0, p1, p2}, Lj$/util/function/T;->accept(J)V

    iget-object v0, p0, Lj$/util/function/P;->b:Lj$/util/function/T;

    invoke-interface {v0, p1, p2}, Lj$/util/function/T;->accept(J)V

    return-void
.end method

.method public final synthetic f(Lj$/util/function/T;)Lj$/util/function/T;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->d(Lj$/util/function/T;Lj$/util/function/T;)Lj$/util/function/P;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lj$/util/function/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/E;


# instance fields
.field public final synthetic a:Lj$/util/function/E;

.field public final synthetic b:Lj$/util/function/E;


# direct methods
.method public synthetic constructor <init>(Lj$/util/function/E;Lj$/util/function/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/function/B;->a:Lj$/util/function/E;

    iput-object p2, p0, Lj$/util/function/B;->b:Lj$/util/function/E;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/function/B;->a:Lj$/util/function/E;

    invoke-interface {v0, p1}, Lj$/util/function/E;->accept(I)V

    iget-object v0, p0, Lj$/util/function/B;->b:Lj$/util/function/E;

    invoke-interface {v0, p1}, Lj$/util/function/E;->accept(I)V

    return-void
.end method

.method public final synthetic l(Lj$/util/function/E;)Lj$/util/function/E;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Lj$/util/function/E;Lj$/util/function/E;)Lj$/util/function/B;

    move-result-object p1

    return-object p1
.end method

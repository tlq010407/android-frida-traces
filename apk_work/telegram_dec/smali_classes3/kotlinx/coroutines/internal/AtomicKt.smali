.class public abstract Lkotlinx/coroutines/internal/AtomicKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_DECISION:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Ljava/lang/Object;

    return-void
.end method

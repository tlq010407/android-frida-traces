.class public final synthetic Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ThemeActivity;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/ThemeActivity;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda17;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/ThemeActivity;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda17;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemeActivity;->$r8$lambda$4M7U5cyuogjKajDRHTjQWkRhick(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V

    return-void
.end method

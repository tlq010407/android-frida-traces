.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda131;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/recorder/HintView2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda131;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda131;->f$1:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda131;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda131;->f$1:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$dl2KQ7HMiCzVj9qmaANW0MZzTqA(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

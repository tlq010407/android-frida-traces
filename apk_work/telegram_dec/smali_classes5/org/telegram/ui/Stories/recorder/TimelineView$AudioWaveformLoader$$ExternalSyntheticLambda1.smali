.class public final synthetic Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    check-cast p1, [S

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->$r8$lambda$NKCuXRkl-aEmwTsseeVUI6KgiXs(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;[SI)V

    return-void
.end method

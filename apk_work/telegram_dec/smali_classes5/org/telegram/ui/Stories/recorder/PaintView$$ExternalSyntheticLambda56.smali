.class public final synthetic Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onAudioSelect(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

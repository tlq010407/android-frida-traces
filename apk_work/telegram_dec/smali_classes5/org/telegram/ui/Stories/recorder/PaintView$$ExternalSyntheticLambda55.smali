.class public final synthetic Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;->f$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;->f$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->$r8$lambda$RwC7AQmGB9KJ066GIXXfB3x3nA8(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Lorg/telegram/ui/Stories/recorder/Weather$State;)V

    return-void
.end method

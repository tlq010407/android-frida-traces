.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TranslateController;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$2:Lorg/telegram/messenger/TranslateController$StoryKey;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/TranslateController;

    iput-object p2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/messenger/TranslateController$StoryKey;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/messenger/TranslateController;

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/messenger/TranslateController$StoryKey;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$cOp1jq5OKpWyzID5ICZaRqaARSE(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ChatMessagesMetadataController;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ChatMessagesMetadataController;Lorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ChatMessagesMetadataController;

    iput-object p2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-wide p3, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/ChatMessagesMetadataController;

    iget-object v1, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-wide v2, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/ChatMessagesMetadataController$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ChatMessagesMetadataController;->$r8$lambda$NMt7yqqhKoev3YOznq0ba2GPiAQ(Lorg/telegram/messenger/ChatMessagesMetadataController;Lorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

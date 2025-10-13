.class public Lorg/telegram/ui/Stories/StoriesController$BotPreview;
.super Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotPreview"
.end annotation


# instance fields
.field public final list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;JLorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iput-wide p2, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object p1, p4, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p2, :cond_0

    iget p1, p4, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;->date:I

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_1

    iget p2, p4, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;->date:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    :cond_1
    :goto_0
    return-void
.end method

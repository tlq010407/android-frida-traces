.class public final synthetic Lorg/telegram/ui/Stories/StoryContainsEmojiButton$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoryContainsEmojiButton;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoryContainsEmojiButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryContainsEmojiButton$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stories/StoryContainsEmojiButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryContainsEmojiButton$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stories/StoryContainsEmojiButton;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

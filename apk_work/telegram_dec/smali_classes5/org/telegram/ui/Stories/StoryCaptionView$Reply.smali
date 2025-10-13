.class public Lorg/telegram/ui/Stories/StoryCaptionView$Reply;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reply"
.end annotation


# instance fields
.field private final animatedSmall:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final bounds:Landroid/graphics/RectF;

.field private final clipRipple:Landroid/graphics/Path;

.field private currentAccount:I

.field public isRepostMessage:Z

.field private final linePaint:Landroid/graphics/Paint;

.field private loaded:Z

.field private loading:Z

.field public messageId:Ljava/lang/Integer;

.field public peerId:Ljava/lang/Long;

.field public repostLine:Lorg/telegram/ui/Components/ReplyMessageLine;

.field public final ripple:Landroid/graphics/drawable/Drawable;

.field private small:Z

.field public storyId:Ljava/lang/Integer;

.field public text:Ljava/lang/CharSequence;

.field public textLayout:Lorg/telegram/ui/Components/Text;

.field public title:Ljava/lang/CharSequence;

.field public titleLayout:Lorg/telegram/ui/Components/Text;

.field public updateText:Z

.field private view:Landroid/view/View;

.field private whenLoaded:Ljava/lang/Runnable;

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$6eMX-2M9WHobe5tZ1a6RI_KnwUA(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->lambda$load$0(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->animatedSmall:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x20ffffff

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->clipRipple:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounds:Landroid/graphics/RectF;

    return-void
.end method

.method public static from(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoryCaptionView$Reply;
    .locals 8

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    const/4 v2, 0x1

    const-string v3, " "

    if-eqz v1, :cond_7

    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;-><init>()V

    iput p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->currentAccount:I

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    if-ltz v1, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->userSpan()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    :goto_1
    iput-object p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->title:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_1
    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->channelSpan()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessageObject;->groupSpan()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_2
    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-eqz p0, :cond_3

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p0, ""

    goto :goto_0

    :cond_4
    iget-object p0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from_name:Ljava/lang/String;

    if-eqz p0, :cond_5

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->userSpan()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_1

    :cond_5
    :goto_3
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    iget p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_6

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->story_id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->storyId:Ljava/lang/Integer;

    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->load()V

    return-object v0

    :cond_7
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    move-object v4, v0

    :goto_4
    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    if-eqz v5, :cond_8

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_b

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;->channel_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;-><init>()V

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->isRepostMessage:Z

    iput p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->currentAccount:I

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    iget p0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;->msg_id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->messageId:Ljava/lang/Integer;

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->channelSpan()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessageObject;->groupSpan()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_5
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->title:Ljava/lang/CharSequence;

    :cond_b
    return-object v0
.end method

.method public static from(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)Lorg/telegram/ui/Stories/StoryCaptionView$Reply;
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v2, :cond_1

    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;-><init>()V

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeerName:Ljava/lang/CharSequence;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->title:Ljava/lang/CharSequence;

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostCaption:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->text:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    iput-boolean p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    return-object v0

    :cond_1
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/MessageObject;

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getRepostDialogId(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    iget v3, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->isRepostMessage:Z

    iget v2, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->currentAccount:I

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getRepostMessageId(Lorg/telegram/messenger/MessageObject;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->messageId:Ljava/lang/Integer;

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->channelSpan()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessageObject;->groupSpan()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, " "

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->title:Ljava/lang/CharSequence;

    :cond_3
    :goto_1
    return-object v0
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->loaded:Z

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->updateText:Z

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->text:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->whenLoaded:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->titleLayout:Lorg/telegram/ui/Components/Text;

    const/high16 v3, 0x41600000    # 14.0f

    const-string v4, ""

    if-nez v2, :cond_1

    new-instance v2, Lorg/telegram/ui/Components/Text;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    move-object v5, v4

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v2, v5, v3, v6}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->titleLayout:Lorg/telegram/ui/Components/Text;

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->textLayout:Lorg/telegram/ui/Components/Text;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->updateText:Z

    if-eqz v2, :cond_4

    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/Text;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->text:Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v5

    :goto_0
    invoke-direct {v2, v4, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->textLayout:Lorg/telegram/ui/Components/Text;

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->animatedSmall:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->titleLayout:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->textLayout:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->width:I

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6, v8, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounds:Landroid/graphics/RectF;

    int-to-float v9, v4

    int-to-float v10, v6

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v10, 0x3ca3d70a    # 0.02f

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-virtual {v7, v8, v8, v10, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v12, 0x41300000    # 11.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v10, v13, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v10

    int-to-float v10, v10

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounds:Landroid/graphics/RectF;

    iget-object v14, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v10, v10, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->clipRipple:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->clipRipple:Landroid/graphics/Path;

    iget-object v14, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounds:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v10, v10, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->clipRipple:Landroid/graphics/Path;

    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v13, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v7, v13, v13, v6, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6, v11, v11, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->linePaint:Landroid/graphics/Paint;

    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->linePaint:Landroid/graphics/Paint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v2

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v13, v13, v11

    float-to-int v13, v13

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v5, v8, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x41400000    # 12.0f

    cmpg-float v6, v9, v1

    if-gez v6, :cond_5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v4, v1

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->titleLayout:Lorg/telegram/ui/Components/Text;

    int-to-float v8, v4

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v4, v2

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->textLayout:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, v2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    move-object/from16 v2, p1

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public height()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->small:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41b00000    # 22.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42280000    # 42.0f

    goto :goto_0

    :goto_1
    return v0
.end method

.method public listen(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->view:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->whenLoaded:Ljava/lang/Runnable;

    new-instance p2, Lorg/telegram/ui/Components/ReplyMessageLine;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ReplyMessageLine;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->repostLine:Lorg/telegram/ui/Components/ReplyMessageLine;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->animatedSmall:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->load()V

    return-void
.end method

.method public load()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->loaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->loading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->storyId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->loading:Z

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->storyId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lorg/telegram/ui/Stories/StoryCaptionView$Reply$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->resolveStoryLink(JILcom/google/android/exoplayer2/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public setPressed(ZFF)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v1

    const/4 v1, 0x1

    const v3, 0x101009e

    aput v3, v2, v1

    goto :goto_0

    :cond_0
    new-array v2, v1, [I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    return-void
.end method

.method public width()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->width:I

    return v0
.end method

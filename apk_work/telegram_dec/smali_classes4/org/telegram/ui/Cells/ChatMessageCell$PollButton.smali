.class public Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PollButton"
.end annotation


# instance fields
.field public animateHeight:I

.field private animateTitle:Landroid/text/StaticLayout;

.field private animateTitleEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field public animateY:I

.field public animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private answer:Lorg/telegram/tgnet/TLRPC$PollAnswer;

.field private author:Lorg/telegram/ui/Components/Text;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private chosen:Z

.field private correct:Z

.field private count:I

.field private decimal:F

.field public height:I

.field private percent:I

.field private percentProgress:F

.field private prevChosen:Z

.field private prevPercent:I

.field private prevPercentProgress:F

.field public selectorDrawable:Landroid/graphics/drawable/Drawable;

.field public selectorDrawableColor:I

.field private task:Lorg/telegram/tgnet/TLRPC$TodoItem;

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field public title:Landroid/text/StaticLayout;

.field public titleX:F

.field public titleY:F

.field private translated:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/tgnet/TLRPC$PollAnswer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->answer:Lorg/telegram/tgnet/TLRPC$PollAnswer;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Lorg/telegram/tgnet/TLRPC$PollAnswer;)Lorg/telegram/tgnet/TLRPC$PollAnswer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->answer:Lorg/telegram/tgnet/TLRPC$PollAnswer;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->count:I

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->count:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/tgnet/TLRPC$TodoItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->task:Lorg/telegram/tgnet/TLRPC$TodoItem;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Lorg/telegram/tgnet/TLRPC$TodoItem;)Lorg/telegram/tgnet/TLRPC$TodoItem;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->task:Lorg/telegram/tgnet/TLRPC$TodoItem;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->chosen:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->chosen:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Lorg/telegram/ui/Components/AvatarDrawable;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Lorg/telegram/messenger/ImageReceiver;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/ui/Components/Text;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->author:Lorg/telegram/ui/Components/Text;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Lorg/telegram/ui/Components/Text;)Lorg/telegram/ui/Components/Text;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->author:Lorg/telegram/ui/Components/Text;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->percent:I

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->percent:I

    return p1
.end method

.method static synthetic access$3112(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;I)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->percent:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->percent:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->prevPercent:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->prevPercent:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->percentProgress:F

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->percentProgress:F

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->prevPercentProgress:F

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->prevPercentProgress:F

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->translated:Z

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->translated:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animateTitle:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animateTitle:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animateTitleEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animateTitleEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->correct:Z

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->correct:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->decimal:F

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->decimal:F

    return p1
.end method

.method static synthetic access$3924(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->decimal:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->decimal:F

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->prevChosen:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->prevChosen:Z

    return p1
.end method


# virtual methods
.method public attach()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->detach()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animateTitleEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->animateTitleEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

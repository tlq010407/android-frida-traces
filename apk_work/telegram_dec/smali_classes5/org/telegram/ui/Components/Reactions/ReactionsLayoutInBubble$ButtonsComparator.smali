.class Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonsComparator"
.end annotation


# instance fields
.field currentAccount:I

.field dialogId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    check-cast p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->compare(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)I
    .locals 7

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->dialogId:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    iget-boolean v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    iget-boolean v1, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-ltz v6, :cond_5

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v4, -0x1

    :cond_0
    return v4

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    iget-boolean v1, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v4, -0x1

    :cond_2
    return v4

    :cond_3
    if-eqz v0, :cond_4

    iget v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosenOrder:I

    iget v1, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosenOrder:I

    if-eq v0, v1, :cond_4

    sub-int/2addr v0, v1

    return v0

    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object p1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ReactionCount;->lastDrawnPosition:I

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->lastDrawnPosition:I

    sub-int/2addr p1, p2

    return p1

    :cond_5
    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    const/4 v4, -0x1

    :cond_6
    return v4

    :cond_7
    iget v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    iget v1, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    if-eq v0, v1, :cond_4

    sub-int/2addr v1, v0

    return v1
.end method

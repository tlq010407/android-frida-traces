.class public Lorg/telegram/messenger/CompoundEmoji;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;,
        Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;
    }
.end annotation


# static fields
.field private static placeholderPaint:Landroid/graphics/Paint;

.field public static skinTones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "\ud83c\udffe"

    const-string/jumbo v1, "\ud83c\udfff"

    const-string/jumbo v2, "\ud83c\udffb"

    const-string/jumbo v3, "\ud83c\udffc"

    const-string/jumbo v4, "\ud83c\udffd"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/CompoundEmoji;->placeholderPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/CompoundEmoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static applyColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->isHandshake(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "\ud83e\udd1d"

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const-string/jumbo v0, "\u200d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\ud83e\udef1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u200d\ud83e\udef2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    aget-object v1, p0, v2

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCompoundEmojiDrawable(Ljava/lang/String;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;
    .locals 3

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->isHandshake(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    new-instance v1, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;-><init>(III)V

    new-instance p1, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p2, 0x1

    invoke-direct {p1, v2, p0, p2}, Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;-><init>(III)V

    invoke-direct {v0, v1, p1}, Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;-><init>(Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;Lorg/telegram/messenger/CompoundEmoji$DrawableInfo;)V

    :cond_3
    return-object v0
.end method

.method public static getSkinTone(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static isCompound(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHandshake(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "\ud83e\udd1d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->getSkinTone(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    move v3, v0

    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 v0, -0x1

    :cond_2
    const-string/jumbo v4, "\u200d"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    if-ne v4, v2, :cond_5

    const/4 v4, 0x0

    aget-object v5, p0, v4

    const-string/jumbo v6, "\ud83e\udef1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    aget-object v6, p0, v5

    const-string/jumbo v7, "\ud83e\udef2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v2, :cond_3

    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_5

    aget-object v0, p0, v4

    invoke-static {v0}, Lorg/telegram/messenger/CompoundEmoji;->getSkinTone(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    :cond_3
    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v2, :cond_4

    aget-object v2, p0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_5

    aget-object p0, p0, v5

    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->getSkinTone(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_4
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setPlaceholderColor(I)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/CompoundEmoji;->placeholderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

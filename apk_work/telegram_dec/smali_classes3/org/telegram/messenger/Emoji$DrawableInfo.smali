.class Lorg/telegram/messenger/Emoji$DrawableInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableInfo"
.end annotation


# instance fields
.field public emojiIndex:I

.field public page:B

.field public page2:S


# direct methods
.method public constructor <init>(BSI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    iput-short p2, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:S

    iput p3, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->emojiIndex:I

    return-void
.end method

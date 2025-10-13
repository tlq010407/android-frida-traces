.class Lorg/telegram/messenger/CodeHighlighting$CachedToSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedToSpan"
.end annotation


# instance fields
.field public end:I

.field public group:I

.field public start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$CachedToSpan;->group:I

    iput p2, p0, Lorg/telegram/messenger/CodeHighlighting$CachedToSpan;->start:I

    iput p3, p0, Lorg/telegram/messenger/CodeHighlighting$CachedToSpan;->end:I

    return-void
.end method

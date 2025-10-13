.class Lorg/telegram/messenger/CodeHighlighting$TokenPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenPattern"
.end annotation


# instance fields
.field public greedy:Z

.field public group:I

.field public insideLanguage:Ljava/lang/String;

.field public insideTokenPatterns:[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;

.field public lookbehind:Z

.field public final pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/CodeHighlighting$CachedPattern;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    return-void
.end method

.method public varargs constructor <init>(ILorg/telegram/messenger/CodeHighlighting$CachedPattern;[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    iput-object p3, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->insideTokenPatterns:[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/CodeHighlighting$CachedPattern;Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->insideLanguage:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lorg/telegram/messenger/CodeHighlighting$CachedPattern;[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->group:I

    iput-object p1, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->pattern:Lorg/telegram/messenger/CodeHighlighting$CachedPattern;

    iput-object p2, p0, Lorg/telegram/messenger/CodeHighlighting$TokenPattern;->insideTokenPatterns:[Lorg/telegram/messenger/CodeHighlighting$TokenPattern;

    return-void
.end method

.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;
.super Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockEmbedPostCaption"
.end annotation


# instance fields
.field private parent:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;-><init>()V

    return-void
.end method

.method static synthetic access$10802(Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;->parent:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    return-object p1
.end method

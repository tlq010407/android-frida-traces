.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TL_pageBlockListParent"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;

.field private lastFontSize:I

.field private lastMaxNumCalcWidth:I

.field private level:I

.field private maxNumWidth:I

.field private pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->items:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;-><init>()V

    return-void
.end method

.method static synthetic access$11500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->level:I

    return p0
.end method

.method static synthetic access$11502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->level:I

    return p1
.end method

.method static synthetic access$11800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastMaxNumCalcWidth:I

    return p0
.end method

.method static synthetic access$18302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastMaxNumCalcWidth:I

    return p1
.end method

.method static synthetic access$18400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastFontSize:I

    return p0
.end method

.method static synthetic access$18402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastFontSize:I

    return p1
.end method

.method static synthetic access$18500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->maxNumWidth:I

    return p0
.end method

.method static synthetic access$18502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->maxNumWidth:I

    return p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    return-object p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    return-object p1
.end method

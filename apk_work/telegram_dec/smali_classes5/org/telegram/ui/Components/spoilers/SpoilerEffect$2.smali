.class Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;
.super Landroid/graphics/Path;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilerRangesInternal(Landroid/view/View;Landroid/text/Layout;IIIILjava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mostleft:I

.field final synthetic val$mostright:I

.field final synthetic val$quoteBlocks:Ljava/util/ArrayList;

.field final synthetic val$spoilers:Ljava/util/List;

.field final synthetic val$spoilersPool:Ljava/util/Stack;

.field final synthetic val$textLayout:Landroid/text/Layout;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$v:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$textLayout:Landroid/text/Layout;

    iput-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilersPool:Ljava/util/Stack;

    iput-object p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilers:Ljava/util/List;

    iput p5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostleft:I

    iput p6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostright:I

    iput-object p7, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$quoteBlocks:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-void
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$v:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$textLayout:Landroid/text/Layout;

    iget-object v7, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilersPool:Ljava/util/Stack;

    iget-object v8, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilers:Ljava/util/List;

    iget v9, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostleft:I

    iget v10, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostright:I

    iget-object v11, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$quoteBlocks:Ljava/util/ArrayList;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-static/range {v1 .. v11}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$1400(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V

    return-void
.end method

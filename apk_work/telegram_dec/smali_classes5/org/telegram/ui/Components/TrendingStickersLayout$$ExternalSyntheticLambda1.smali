.class public final synthetic Lorg/telegram/ui/Components/TrendingStickersLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

.field public final synthetic f$1:Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

.field public final synthetic f$2:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    iput-object p3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->$r8$lambda$XgajJlG6cAJ6u_Hdg2Pgc5N4b-k(Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

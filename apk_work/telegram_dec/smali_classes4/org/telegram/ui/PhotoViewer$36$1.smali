.class Lorg/telegram/ui/PhotoViewer$36$1;
.super Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$36;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$36;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$36;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$36$1;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForDeceleration(I)I
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->calculateTimeForDeceleration(I)I

    move-result p1

    const/16 v0, 0xb4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

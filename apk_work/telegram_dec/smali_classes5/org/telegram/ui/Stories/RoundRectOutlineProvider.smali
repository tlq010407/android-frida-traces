.class public Lorg/telegram/ui/Stories/RoundRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public radiusInDp:F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;->radiusInDp:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget p1, p0, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;->radiusInDp:F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;IIIIF)V

    return-void
.end method

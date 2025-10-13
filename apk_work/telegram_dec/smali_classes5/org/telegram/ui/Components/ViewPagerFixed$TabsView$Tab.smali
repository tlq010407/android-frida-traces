.class Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tab"
.end annotation


# instance fields
.field public alpha:F

.field public counter:I

.field public id:I

.field public title:Ljava/lang/CharSequence;

.field public titleWidth:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->alpha:F

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getWidth(ZLandroid/text/TextPaint;)I
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->titleWidth:I

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

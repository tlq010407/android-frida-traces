.class public abstract Lorg/telegram/ui/Components/CircularViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CircularViewPager$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/CircularViewPager$Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/CircularViewPager$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/CircularViewPager$1;-><init>(Lorg/telegram/ui/Components/CircularViewPager;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CircularViewPager;)Lorg/telegram/ui/Components/CircularViewPager$Adapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CircularViewPager;->adapter:Lorg/telegram/ui/Components/CircularViewPager$Adapter;

    return-object p0
.end method


# virtual methods
.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/telegram/ui/Components/CircularViewPager$Adapter;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/CircularViewPager$Adapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;->setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V
    .locals 1

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/CircularViewPager;->adapter:Lorg/telegram/ui/Components/CircularViewPager$Adapter;

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getExtraCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

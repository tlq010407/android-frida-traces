.class public abstract Lorg/telegram/ui/Components/CircularViewPager$Adapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/CircularViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getExtraCount()I
.end method

.method public getRealPosition(I)I
    .locals 3

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getExtraCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    sub-int/2addr p1, v0

    return p1

    :cond_1
    sub-int/2addr p1, v1

    return p1
.end method

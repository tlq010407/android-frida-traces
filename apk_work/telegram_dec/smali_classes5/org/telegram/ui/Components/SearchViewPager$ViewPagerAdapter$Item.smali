.class Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field filterIndex:I

.field final synthetic this$1:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

.field private final type:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->this$1:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;ILorg/telegram/ui/Components/SearchViewPager$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;-><init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->type:I

    return p0
.end method

.class public Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFactory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asText(IIFLjava/lang/CharSequence;ZI)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    int-to-long p0, p0

    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    iput p2, v0, Lorg/telegram/ui/Components/UItem;->floatValue:F

    iput p5, v0, Lorg/telegram/ui/Components/UItem;->pad:I

    iput-boolean p4, v0, Lorg/telegram/ui/Components/UItem;->checked:Z

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget p3, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    iget-wide p3, p2, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int p4, p3

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    iget p3, p2, Lorg/telegram/ui/Components/UItem;->floatValue:F

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget p3, p2, Lorg/telegram/ui/Components/UItem;->pad:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    .line 0
    new-instance p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory$1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;Landroid/content/Context;)V

    return-object p2
.end method

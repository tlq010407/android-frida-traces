.class public Lorg/telegram/ui/web/AddressBarList$Address2View$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/AddressBarList$Address2View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/web/AddressBarList$Address2View$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/web/AddressBarList$Address2View$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(ILjava/lang/String;Landroid/view/View$OnClickListener;ZZLorg/telegram/ui/web/AddressBarList;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/web/AddressBarList$Address2View$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    iput-boolean p3, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    iput-boolean p4, v0, Lorg/telegram/ui/Components/UItem;->red:Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-object p5, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/web/AddressBarList$Address2View;

    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/web/AddressBarList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/AddressBarList$Address2View;->setAsShowMore(Lorg/telegram/ui/web/AddressBarList;)V

    goto :goto_0

    :cond_0
    iget v1, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    iget-boolean v4, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean v5, p2, Lorg/telegram/ui/Components/UItem;->red:Z

    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lorg/telegram/ui/web/AddressBarList;

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/web/AddressBarList$Address2View;->set(ILjava/lang/String;Landroid/view/View$OnClickListener;ZZLorg/telegram/ui/web/AddressBarList;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/AddressBarList$Address2View$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/web/AddressBarList$Address2View;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/web/AddressBarList$Address2View;
    .locals 0

    .line 0
    new-instance p2, Lorg/telegram/ui/web/AddressBarList$Address2View;

    invoke-direct {p2, p1}, Lorg/telegram/ui/web/AddressBarList$Address2View;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.class public final Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asSwitcher(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-static {p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$400(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Landroid/widget/FrameLayout;

    move-result-object p3

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p4, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->access$500(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Landroid/widget/FrameLayout;

    move-result-object p3

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p4, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->setChecked(ZZ)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;
    .locals 0

    .line 0
    new-instance p2, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;

    invoke-direct {p2, p1, p4}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

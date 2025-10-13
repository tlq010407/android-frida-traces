.class Lorg/telegram/ui/web/AddressBarList$1;
.super Lorg/telegram/ui/Components/UniversalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/AddressBarList;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/AddressBarList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/AddressBarList;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lorg/telegram/ui/web/AddressBarList$1;->this$0:Lorg/telegram/ui/web/AddressBarList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$1;->this$0:Lorg/telegram/ui/web/AddressBarList;

    invoke-static {p1}, Lorg/telegram/ui/web/AddressBarList;->access$000(Lorg/telegram/ui/web/AddressBarList;)Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$1;->this$0:Lorg/telegram/ui/web/AddressBarList;

    invoke-static {p1}, Lorg/telegram/ui/web/AddressBarList;->access$000(Lorg/telegram/ui/web/AddressBarList;)Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->access$100(Lorg/telegram/ui/web/AddressBarList$BookmarksList;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$1;->this$0:Lorg/telegram/ui/web/AddressBarList;

    invoke-static {p1}, Lorg/telegram/ui/web/AddressBarList;->access$000(Lorg/telegram/ui/web/AddressBarList;)Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->load()V

    :cond_0
    return-void
.end method

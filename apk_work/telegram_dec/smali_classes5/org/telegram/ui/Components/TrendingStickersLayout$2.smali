.class Lorg/telegram/ui/Components/TrendingStickersLayout$2;
.super Lorg/telegram/ui/Components/SearchField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$2;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/SearchField;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$2;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$200(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->search(Ljava/lang/String;)V

    return-void
.end method

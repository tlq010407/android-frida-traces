.class Lorg/telegram/ui/ArchivedStickersActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArchivedStickersActivity;

.field final synthetic val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$2;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/ArchivedStickersActivity$2;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerSetInstalled()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$2;->val$view:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setDrawProgress(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArchivedStickersActivity$2;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ArchivedStickersActivity;->access$900(Lorg/telegram/ui/ArchivedStickersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArchivedStickersActivity$2;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public onStickerSetUninstalled()V
    .locals 0

    return-void
.end method

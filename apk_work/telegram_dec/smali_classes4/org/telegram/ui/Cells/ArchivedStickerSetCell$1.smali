.class Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->syncButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ArchivedStickerSetCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ArchivedStickerSetCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->access$000(Lorg/telegram/ui/Cells/ArchivedStickerSetCell;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/ArchivedStickerSetCell;)Lorg/telegram/ui/Components/ProgressButton;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->access$200(Lorg/telegram/ui/Cells/ArchivedStickerSetCell;)Landroid/widget/Button;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/ArchivedStickerSetCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/ArchivedStickerSetCell;)Lorg/telegram/ui/Components/ProgressButton;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

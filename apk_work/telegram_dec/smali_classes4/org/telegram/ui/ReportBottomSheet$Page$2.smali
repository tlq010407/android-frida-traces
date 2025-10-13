.class Lorg/telegram/ui/ReportBottomSheet$Page$2;
.super Lorg/telegram/ui/Cells/EditTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportBottomSheet$Page;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ReportBottomSheet$Page;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ReportBottomSheet$Page;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$2;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/EditTextCell;-><init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/EditTextCell;->onTextChanged(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$2;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-static {p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->access$2000(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$2;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-static {p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->access$2000(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page$2;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    iget-object v1, v0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->optional:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->access$100(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.class Lorg/telegram/ui/Components/TableView$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TableView;->addWalletAddressRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TableView;

.field final synthetic val$onCopy:Ljava/lang/Runnable;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TableView;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TableView$1;->this$0:Lorg/telegram/ui/Components/TableView;

    iput-object p2, p0, Lorg/telegram/ui/Components/TableView$1;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lorg/telegram/ui/Components/TableView$1;->val$onCopy:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/TableView$1;->val$text:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/TableView$1;->val$onCopy:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.class Lorg/telegram/ui/ChatActivity$150;
.super Lorg/telegram/ui/Cells/ChatActionCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showGreetInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$150;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/ChatActionCell;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$150;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$54300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$150;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ChatActivity;->getServiceHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FI)V

    return-void
.end method

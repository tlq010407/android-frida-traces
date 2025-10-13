.class Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scrollState:I

.field final synthetic this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

.field private willSetPage:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->scrollState:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->scrollState:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    iget v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->willSetPage:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$502(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$102(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$202(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$300(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->scrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Z

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$502(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$502(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;I)I

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->access$400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;)Z

    move-result v0

    if-gt p1, v0, :cond_2

    iput v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->willSetPage:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog$1;->willSetPage:I

    :goto_1
    return-void
.end method

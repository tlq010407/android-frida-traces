.class Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

.field final synthetic val$this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->val$this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v2, 0x14

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->isOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$2202(Lorg/telegram/ui/ProfileActivity;I)I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$4000(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->refreshVisibility(F)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$4100(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)V

    return-void
.end method

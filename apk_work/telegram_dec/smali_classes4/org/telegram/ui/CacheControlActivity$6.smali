.class Lorg/telegram/ui/CacheControlActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;

.field final synthetic val$entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$6;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$6;->val$entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$6;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->access$1800(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public onAvatarClick()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$6;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$1700(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$6;->val$entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v1, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v3, "user_id"

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    neg-long v1, v1

    const-string v3, "chat_id"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$6;->this$0:Lorg/telegram/ui/CacheControlActivity;

    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

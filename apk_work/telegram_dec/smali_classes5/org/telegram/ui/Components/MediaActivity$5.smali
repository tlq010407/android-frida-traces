.class Lorg/telegram/ui/Components/MediaActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$5;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSearchMembers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isFragmentOpened()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZZLandroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrollToSharedMedia()V
    .locals 0

    return-void
.end method

.method public updateSelectedMediaTabText()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$5;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/MediaActivity;->access$600(Lorg/telegram/ui/Components/MediaActivity;)V

    return-void
.end method

.class Lorg/telegram/ui/Cells/ReactedUserHolderView$1;
.super Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ReactedUserHolderView;-><init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ReactedUserHolderView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView$1;->this$0:Lorg/telegram/ui/Cells/ReactedUserHolderView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public openStory(JLjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView$1;->this$0:Lorg/telegram/ui/Cells/ReactedUserHolderView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->openStory(JLjava/lang/Runnable;)V

    return-void
.end method

.class Lorg/telegram/ui/Stories/StoryMediaAreasView$1;
.super Lorg/telegram/ui/LocationActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryMediaAreasView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView$1;->this$0:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected disablePermissionCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->bind(I)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 2

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;->val$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)I

    move-result p1

    :goto_0
    return p1
.end method

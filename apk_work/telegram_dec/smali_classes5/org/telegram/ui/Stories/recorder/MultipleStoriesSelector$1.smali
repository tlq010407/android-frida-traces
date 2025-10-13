.class Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;
.super Lorg/telegram/ui/Components/UniversalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;


# direct methods
.method public static synthetic $r8$lambda$OBw0HtHC8Ji9WLVn6rrf-E0aP7c(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;->lambda$swappedElements$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 12

    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;->this$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method private synthetic lambda$swappedElements$0(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;->this$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->access$000(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->access$100(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$EntryView;->setPosition(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected swappedElements()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;->this$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->access$000(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$1;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

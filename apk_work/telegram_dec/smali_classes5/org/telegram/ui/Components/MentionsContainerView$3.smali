.class Lorg/telegram/ui/Components/MentionsContainerView$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MentionsContainerView;-><init>(Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MentionsContainerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$3;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4

    const/16 v0, 0x64

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView$3;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v3, :cond_1

    return v0

    :cond_1
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    const/16 p1, 0x14

    return p1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$3;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$3;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    move p1, v1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$3;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanSizeForItem(I)I

    move-result p1

    return p1
.end method

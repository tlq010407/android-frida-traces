.class Lorg/telegram/ui/FiltersSetupActivity$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FiltersSetupActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FiltersSetupActivity;


# direct methods
.method public static synthetic $r8$lambda$mrSvCrMSQV433YlaXj5y18MWFwg(Lorg/telegram/ui/FiltersSetupActivity$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity$2;->lambda$onTouchEvent$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$2;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$2;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->lockFiltersInternal()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$2;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$2;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;III)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FiltersSetupActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$2;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

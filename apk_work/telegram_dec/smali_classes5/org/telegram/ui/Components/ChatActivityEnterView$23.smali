.class Lorg/telegram/ui/Components/ChatActivityEnterView$23;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createGiftButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$DhqdBnoGv65u1Epyjvw7Fb6YlDI(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->lambda$onLayout$0(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onLayout$0(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$23;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance p2, Lorg/telegram/ui/Components/ChatActivityEnterView$23$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$23$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lorg/telegram/ui/Components/ProximitySheet$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ProximitySheet;->checkDismiss(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ProximitySheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ProximitySheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$4;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$4;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$300(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProximitySheet$4;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$300(Lorg/telegram/ui/Components/ProximitySheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$4;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ProximitySheet;->access$302(Lorg/telegram/ui/Components/ProximitySheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

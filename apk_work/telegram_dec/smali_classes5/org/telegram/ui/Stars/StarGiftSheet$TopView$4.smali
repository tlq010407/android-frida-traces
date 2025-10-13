.class Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotateAttributes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4200(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4102(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4300(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4400(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4200(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4500(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/BagRandomizer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BagRandomizer;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v1, 0xa0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4600(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/BagRandomizer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BagRandomizer;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4700(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4800(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4800(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x9c4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

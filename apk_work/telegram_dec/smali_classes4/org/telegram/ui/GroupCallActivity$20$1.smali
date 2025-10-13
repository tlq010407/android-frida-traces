.class Lorg/telegram/ui/GroupCallActivity$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity$20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCallActivity$20;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$20;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$20$1;->this$1:Lorg/telegram/ui/GroupCallActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$20$1;->this$1:Lorg/telegram/ui/GroupCallActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity$20;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$20$1;->this$1:Lorg/telegram/ui/GroupCallActivity$20;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity$20;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$17100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$20$1;->this$1:Lorg/telegram/ui/GroupCallActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity$20;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCallActivity;->access$17202(Lorg/telegram/ui/GroupCallActivity;Z)Z

    return-void
.end method

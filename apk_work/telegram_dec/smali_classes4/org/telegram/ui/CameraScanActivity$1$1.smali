.class Lorg/telegram/ui/CameraScanActivity$1$1;
.super Lorg/telegram/ui/CameraScanActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CameraScanActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CameraScanActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CameraScanActivity$1;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity$1$1;->this$0:Lorg/telegram/ui/CameraScanActivity$1;

    invoke-direct {p0, p2}, Lorg/telegram/ui/CameraScanActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method public finishFragment()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFinishing(Z)V

    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity$1$1;->this$0:Lorg/telegram/ui/CameraScanActivity$1;

    invoke-virtual {v0}, Lorg/telegram/ui/CameraScanActivity$1;->dismiss()V

    return-void
.end method

.method public removeSelfFromStack()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity$1$1;->this$0:Lorg/telegram/ui/CameraScanActivity$1;

    invoke-virtual {v0}, Lorg/telegram/ui/CameraScanActivity$1;->dismiss()V

    return-void
.end method

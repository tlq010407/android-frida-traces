.class public final synthetic Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$1;->$r8$lambda$Rx21TGQLU2yUDDxrvshPgjTbRus(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;Landroid/content/DialogInterface;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>([ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;->f$0:[Z

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;->f$0:[Z

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->$r8$lambda$wY--mzJHTOpTZmii2flzYplpdWs([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method

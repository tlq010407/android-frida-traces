.class public final synthetic Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->$r8$lambda$t3dh2AB0YwSRv4-W_LOo3bJIbuQ(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

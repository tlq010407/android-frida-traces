.class public final synthetic Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$29;

.field public final synthetic f$1:J

.field public final synthetic f$2:[Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$29;J[Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/DialogsActivity$29;

    iput-wide p2, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda1;->f$2:[Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/DialogsActivity$29;

    iget-wide v1, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$29$$ExternalSyntheticLambda1;->f$2:[Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/DialogsActivity$29;->$r8$lambda$v8SmTQQXYV6Mxj0_mYQdbYhG870(Lorg/telegram/ui/DialogsActivity$29;J[Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

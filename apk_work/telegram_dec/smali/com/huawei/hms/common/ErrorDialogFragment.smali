.class public Lcom/huawei/hms/common/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

.field private myDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/huawei/hms/common/ErrorDialogFragment;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/hms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;
    .locals 2

    .line 0
    const-string v0, "Dialog cannot be null!"

    invoke-static {p0, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/huawei/hms/common/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/huawei/hms/common/ErrorDialogFragment;-><init>()V

    iput-object p0, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/huawei/hms/common/ErrorDialogFragment;->myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myCancelLister:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    iget-object p1, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/common/ErrorDialogFragment;->myDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "FragmentManager cannot be null!"

    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

.field public final synthetic f$1:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda9;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/FolderBottomSheet;->$r8$lambda$nsp0GYdreQXHz0WT2mHFsb3nlmc(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/ui/Components/FolderBottomSheet$HeaderCell;Z)V

    return-void
.end method

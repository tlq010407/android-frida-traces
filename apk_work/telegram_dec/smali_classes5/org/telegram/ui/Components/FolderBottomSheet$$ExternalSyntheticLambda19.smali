.class public final synthetic Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    iput p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;->f$2:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    iget v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda19;->f$2:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->$r8$lambda$iQZ72J6wbYJSb3ODslEWw0k184s(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/messenger/Utilities$Callback;ILjava/lang/Boolean;)V

    return-void
.end method

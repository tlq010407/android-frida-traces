.class public final synthetic Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/FolderBottomSheet$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/FolderBottomSheet;->$r8$lambda$djBw8L_Ru60gZ5QQm1icJdKvnVU(Lorg/telegram/ui/Components/FolderBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

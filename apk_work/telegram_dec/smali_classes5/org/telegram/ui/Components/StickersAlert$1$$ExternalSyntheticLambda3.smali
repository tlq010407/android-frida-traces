.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert$1;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert$1;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/StickersAlert$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$3:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda3;->f$3:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/StickersAlert$1;->$r8$lambda$emZW_0tclF8zBvwUHp9Ho0ZiaEM(Lorg/telegram/ui/Components/StickersAlert$1;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/util/HashMap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda10;->f$1:Ljava/util/HashMap;

    iput p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda10;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda10;->f$1:Ljava/util/HashMap;

    iget v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda10;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$DSQ-MH4zx7U-H3dFsduepYLx_88(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;ILorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

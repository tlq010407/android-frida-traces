.class public final synthetic Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->$r8$lambda$LGaFiyEg835xXSzydomc_-Ff6Lk(Landroid/app/Activity;Landroid/content/Intent;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;ZLandroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-boolean p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-boolean v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda30;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$gEfDaCeogSnHNiXZB2mBIKM3qso(Lorg/telegram/ui/ActionBar/AlertDialog;ZLandroid/app/Activity;)V

    return-void
.end method

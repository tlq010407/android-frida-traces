.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$10:Landroid/os/Bundle;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Long;

.field public final synthetic f$4:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$5:Ljava/lang/Long;

.field public final synthetic f$6:Ljava/lang/Integer;

.field public final synthetic f$7:Ljava/lang/Integer;

.field public final synthetic f$8:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;ZLjava/lang/Long;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$3:Ljava/lang/Long;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$4:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$5:Ljava/lang/Long;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$6:Ljava/lang/Integer;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$7:Ljava/lang/Integer;

    iput-object p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$8:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$9:I

    iput-object p11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$10:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$3:Ljava/lang/Long;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$4:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$5:Ljava/lang/Long;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$6:Ljava/lang/Integer;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$7:Ljava/lang/Integer;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$8:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$9:I

    iget-object v10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda105;->f$10:Landroid/os/Bundle;

    move-object v11, p1

    move-object v12, p2

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$yLm851Dx5R5Zewv0V2JVw3StDwM(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;ZLjava/lang/Long;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

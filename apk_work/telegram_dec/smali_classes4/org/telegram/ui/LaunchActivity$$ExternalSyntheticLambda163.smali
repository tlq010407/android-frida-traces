.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$10:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/Integer;

.field public final synthetic f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$7:Landroid/os/Bundle;

.field public final synthetic f$8:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;JILjava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;Lorg/telegram/ui/ChatActivity;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-wide p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$3:J

    iput p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$4:I

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$5:Ljava/lang/Integer;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$7:Landroid/os/Bundle;

    iput-object p10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$8:Lorg/telegram/ui/ChatActivity;

    iput-object p11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$9:Ljava/lang/String;

    iput p12, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$10:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-wide v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$3:J

    iget v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$4:I

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$5:Ljava/lang/Integer;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$7:Landroid/os/Bundle;

    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$8:Lorg/telegram/ui/ChatActivity;

    iget-object v10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$9:Ljava/lang/String;

    iget v11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda163;->f$10:I

    invoke-static/range {v0 .. v11}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$sxw5cSRpddGFqrifeAjydIsKuE8(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLObject;JILjava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;Lorg/telegram/ui/ChatActivity;Ljava/lang/String;I)V

    return-void
.end method

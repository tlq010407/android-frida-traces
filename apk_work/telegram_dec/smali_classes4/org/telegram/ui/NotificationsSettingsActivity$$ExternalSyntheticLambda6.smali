.class public final synthetic Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/NotificationsSettingsActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/ui/Cells/NotificationsCheckCell;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;IZLorg/telegram/ui/Cells/NotificationsCheckCell;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    iput p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$3:Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iput p5, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    iget v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$3:Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget v4, p0, Lorg/telegram/ui/NotificationsSettingsActivity$$ExternalSyntheticLambda6;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/NotificationsSettingsActivity;->$r8$lambda$DG1oNHlVHFZ6B7U2mKxgLf_uAXs(Lorg/telegram/ui/NotificationsSettingsActivity;IZLorg/telegram/ui/Cells/NotificationsCheckCell;I)V

    return-void
.end method

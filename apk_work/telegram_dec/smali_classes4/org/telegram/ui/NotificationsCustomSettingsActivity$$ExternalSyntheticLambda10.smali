.class public final synthetic Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/SharedPreferences;Ljava/lang/String;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$3:[Z

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;->f$3:[Z

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->$r8$lambda$j3Vggj72rlAoFdHJpBilUvwzgoM(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/SharedPreferences;Ljava/lang/String;[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

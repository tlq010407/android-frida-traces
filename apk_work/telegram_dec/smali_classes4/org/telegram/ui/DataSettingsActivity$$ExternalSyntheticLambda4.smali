.class public final synthetic Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DataSettingsActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/SharedPreferences;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/DataSettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;->f$1:Landroid/content/SharedPreferences;

    iput p3, p0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/DataSettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;->f$1:Landroid/content/SharedPreferences;

    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/DataSettingsActivity;->$r8$lambda$ygyWOkTp7VqFgMJ8HzLqFuSyBQI(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/SharedPreferences;ILandroid/content/DialogInterface;I)V

    return-void
.end method

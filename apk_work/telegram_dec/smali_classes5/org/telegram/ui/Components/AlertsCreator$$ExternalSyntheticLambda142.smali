.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda142;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# direct methods
.method public synthetic constructor <init>(JLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda142;->f$0:J

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda142;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda142;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda142;->f$0:J

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda142;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda142;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$Dp7tat8NkS4O5EjkHklYGbyv9_A(JLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

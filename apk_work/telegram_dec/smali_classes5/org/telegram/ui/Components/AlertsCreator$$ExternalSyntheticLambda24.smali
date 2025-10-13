.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/ui/Components/NumberPicker;

.field public final synthetic f$4:Lorg/telegram/ui/Components/NumberPicker;

.field public final synthetic f$5:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;JJLorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$0:Landroid/widget/TextView;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$1:J

    iput-wide p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$2:J

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$3:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$4:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$5:Lorg/telegram/ui/Components/NumberPicker;

    return-void
.end method


# virtual methods
.method public final onValueChange(Lorg/telegram/ui/Components/NumberPicker;II)V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$0:Landroid/widget/TextView;

    iget-wide v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$1:J

    iget-wide v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$2:J

    iget-object v5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$3:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$4:Lorg/telegram/ui/Components/NumberPicker;

    iget-object v7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda24;->f$5:Lorg/telegram/ui/Components/NumberPicker;

    move-object v8, p1

    move v9, p2

    move v10, p3

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$YVNPZyCuETJkmthmL2FYpWiH4is(Landroid/widget/TextView;JJLorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;II)V

    return-void
.end method

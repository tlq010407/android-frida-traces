.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda185;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/Calendar;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(JLjava/util/Calendar;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda185;->f$0:J

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda185;->f$1:Ljava/util/Calendar;

    iput p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda185;->f$2:I

    return-void
.end method


# virtual methods
.method public final format(I)Ljava/lang/String;
    .locals 4

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda185;->f$0:J

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda185;->f$1:Ljava/util/Calendar;

    iget v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda185;->f$2:I

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$Mc_eoSVUVAJ0oT_NiJBKh_H_7Xw(JLjava/util/Calendar;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

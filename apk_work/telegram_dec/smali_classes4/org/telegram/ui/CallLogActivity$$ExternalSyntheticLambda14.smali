.class public final synthetic Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CallLogActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/CallLogActivity;

    iput p2, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/CallLogActivity;

    iget v1, p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda14;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/CallLogActivity;->$r8$lambda$0gKL2JFHcIPlWTZ1-94RUUx4sLg(Lorg/telegram/ui/CallLogActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

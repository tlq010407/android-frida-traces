.class public final synthetic Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/ChatEditActivity;

    iput p2, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;->f$1:I

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/ui/ChatEditActivity;

    iget v1, p0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatEditActivity;->$r8$lambda$W7FRu7jIhfZubA1c7KZEiI_nLb0(Lorg/telegram/ui/ChatEditActivity;ILandroid/content/DialogInterface;)V

    return-void
.end method

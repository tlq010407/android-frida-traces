.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;ZLjava/util/ArrayList;Lorg/telegram/messenger/MessagesController$DialogFilter;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$3:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iput-wide p5, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$4:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$3:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-wide v4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda31;->f$4:J

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$qZr7zM0gwisgH208Sesbq0Pls3s(Lorg/telegram/ui/DialogsActivity;ZLjava/util/ArrayList;Lorg/telegram/messenger/MessagesController$DialogFilter;JLandroid/view/View;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatUsersActivity;

.field public final synthetic f$1:Lorg/telegram/ui/Cells/TextCell;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/ui/Cells/TextCell;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/ui/Cells/TextCell;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatUsersActivity;->$r8$lambda$v6HGRlAAt8jT8ANN-2jlYDmLpio(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    return-void
.end method

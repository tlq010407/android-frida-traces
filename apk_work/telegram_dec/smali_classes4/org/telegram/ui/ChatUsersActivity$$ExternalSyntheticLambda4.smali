.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatUsersActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatUsersActivity;->$r8$lambda$50J8l3QYPZnfoQZBIyBoiAJBiTc(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

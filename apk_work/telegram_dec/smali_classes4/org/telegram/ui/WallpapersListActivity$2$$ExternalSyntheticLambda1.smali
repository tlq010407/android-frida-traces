.class public final synthetic Lorg/telegram/ui/WallpapersListActivity$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/WallpapersListActivity$2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/WallpapersListActivity$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/WallpapersListActivity$2;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/WallpapersListActivity$2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/WallpapersListActivity$2;->$r8$lambda$1ODjyxvnxQfVHOy3ssyKSY_apiw(Lorg/telegram/ui/WallpapersListActivity$2;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result p1

    return p1
.end method

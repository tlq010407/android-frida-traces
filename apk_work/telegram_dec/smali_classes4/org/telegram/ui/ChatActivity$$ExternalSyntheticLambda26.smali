.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda26;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda26;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$J69RPiJGIUzTP-v3TF66_U61-RM(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    return-void
.end method

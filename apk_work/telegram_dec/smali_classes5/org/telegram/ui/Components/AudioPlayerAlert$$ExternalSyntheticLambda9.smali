.class public final synthetic Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->$r8$lambda$TaxzWP5qlk3NM7FvdSt9zZayVLA(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

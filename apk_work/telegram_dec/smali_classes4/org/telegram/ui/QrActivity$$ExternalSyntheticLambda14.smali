.class public final synthetic Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/QrActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/QrActivity;ZLorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/QrActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iput-object p4, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/QrActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-object v3, p0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;->f$3:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/QrActivity;->$r8$lambda$kdok_VEe7k4cnz9giKB0TBqzlcU(Lorg/telegram/ui/QrActivity;ZLorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V

    return-void
.end method

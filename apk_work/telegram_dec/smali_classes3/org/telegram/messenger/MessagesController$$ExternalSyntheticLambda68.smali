.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$2:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$3:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$4:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$2:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$3:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda68;->f$4:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$29JBlX-uz9aCi6JiUuF72C6NVZY(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

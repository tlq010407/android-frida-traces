.class public final synthetic Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Adapters/DialogsAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->onArchiveSettingsClick()V

    return-void
.end method

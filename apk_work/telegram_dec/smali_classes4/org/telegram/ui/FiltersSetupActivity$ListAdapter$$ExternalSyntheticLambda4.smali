.class public final synthetic Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->$r8$lambda$I-aDHJ_aCN-1Ewtz1quFx9rVNyw(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

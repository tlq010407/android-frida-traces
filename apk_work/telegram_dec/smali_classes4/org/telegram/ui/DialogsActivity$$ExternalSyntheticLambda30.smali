.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->createSearchViewPager()V

    return-void
.end method

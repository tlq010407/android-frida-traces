.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$IntCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

.field public final synthetic f$8:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$9:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$1:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$5:Z

    iput-boolean p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$6:Z

    iput-object p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$7:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iput-object p9, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$8:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p10, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$9:[Z

    return-void
.end method


# virtual methods
.method public final run(I)V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$1:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$5:Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$6:Z

    iget-object v7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$7:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iget-object v8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$8:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v9, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda115;->f$9:[Z

    move v10, p1

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$-C29Y_CsfUw2ew-oKqxdaDNwYWA(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZI)V

    return-void
.end method

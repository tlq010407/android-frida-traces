.class public final synthetic Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FiltersSetupActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogFilterTags;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogFilterTags;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/FiltersSetupActivity;

    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogFilterTags;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogFilterTags;

    invoke-static {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity;->$r8$lambda$kJi0ZC37Fg96It3SzQO6P_3-8-Y(Lorg/telegram/ui/FiltersSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogFilterTags;)V

    return-void
.end method

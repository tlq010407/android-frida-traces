.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->$r8$lambda$NB0VkcIexaB7Dv7ZfksOUJI_Jtg(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

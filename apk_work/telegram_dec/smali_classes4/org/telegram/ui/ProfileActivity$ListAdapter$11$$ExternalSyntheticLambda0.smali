.class public final synthetic Lorg/telegram/ui/ProfileActivity$ListAdapter$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$ListAdapter$11;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_username;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter$11;Lorg/telegram/tgnet/TLRPC$TL_username;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$11$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ProfileActivity$ListAdapter$11;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$11$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_username;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$11$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ProfileActivity$ListAdapter$11;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$11$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_username;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ProfileActivity$ListAdapter$11;->$r8$lambda$Dn8mQLiUSk7URnhLCIB9oFssOCw(Lorg/telegram/ui/ProfileActivity$ListAdapter$11;Lorg/telegram/tgnet/TLRPC$TL_username;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsFragment$2;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment$2;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/TopicsFragment$2;

    iput-wide p2, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final didSelectUsers(Ljava/util/ArrayList;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/TopicsFragment$2;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment$2$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/TopicsFragment$2;->$r8$lambda$1IbtibxGg361Q3tcogayJrGYI6U(Lorg/telegram/ui/TopicsFragment$2;JLjava/util/ArrayList;I)V

    return-void
.end method

.method public synthetic needAddBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate$-CC;->$default$needAddBot(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

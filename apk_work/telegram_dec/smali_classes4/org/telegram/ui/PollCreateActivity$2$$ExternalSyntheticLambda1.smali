.class public final synthetic Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PollCreateActivity$2;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

.field public final synthetic f$2:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PollCreateActivity$2;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PollCreateActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iput-object p3, p0, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZI)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PollCreateActivity$2;

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$2$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashMap;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/PollCreateActivity$2;->$r8$lambda$ZJOHma9s4VT5nqaAO4ZrUh4bKUk(Lorg/telegram/ui/PollCreateActivity$2;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZI)V

    return-void
.end method

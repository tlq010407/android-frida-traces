.class public final synthetic Lorg/telegram/ui/DialogOrContactPickerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogOrContactPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogOrContactPickerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    return-void
.end method


# virtual methods
.method public final didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->$r8$lambda$Pw1mN5tgm0edCsc7-Dkyp0xe8BI(Lorg/telegram/ui/DialogOrContactPickerActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method
